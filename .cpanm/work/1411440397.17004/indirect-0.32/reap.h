/* This file is part of the indirect Perl module.
 * See http://search.cpan.org/dist/indirect/ */

/* This header provides a specialized version of Scope::Upper::reap that can be
 * called directly from XS.
 * See http://search.cpan.org/dist/Scope-Upper/ for details. */

#ifndef REAP_H
#define REAP_H 1

#define REAP_DESTRUCTOR_SIZE 3

typedef struct {
 I32    depth;
 I32   *origin;
 void (*cb)(pTHX_ void *);
 void  *ud;
 char  *dummy;
} reap_ud;

STATIC void reap_pop(pTHX_ void *);

STATIC void reap_pop(pTHX_ void *ud_) {
 reap_ud *ud = ud_;
 I32 depth, *origin, mark, base;

 depth  = ud->depth;
 origin = ud->origin;
 mark   = origin[depth];
 base   = origin[depth - 1];

 if (base < mark) {
  PL_savestack_ix = mark;
  leave_scope(base);
 }
 PL_savestack_ix = base;

 if ((ud->depth = --depth) > 0) {
  SAVEDESTRUCTOR_X(reap_pop, ud);
 } else {
  void (*cb)(pTHX_ void *) = ud->cb;
  void  *cb_ud             = ud->ud;

  PerlMemShared_free(ud->origin);
  PerlMemShared_free(ud);

  SAVEDESTRUCTOR_X(cb, cb_ud);
 }
}

STATIC void reap(pTHX_ I32 depth, void (*cb)(pTHX_ void *), void *cb_ud) {
#define reap(D, CB, UD) reap(aTHX_ (D), (CB), (UD))
 reap_ud *ud;
 I32 i;

 if (depth > PL_scopestack_ix)
  depth = PL_scopestack_ix;

 ud         = PerlMemShared_malloc(sizeof *ud);
 ud->depth  = depth;
 ud->origin = PerlMemShared_malloc((depth + 1) * sizeof *ud->origin);
 ud->cb     = cb;
 ud->ud     = cb_ud;
 ud->dummy  = NULL;

 for (i = depth; i >= 1; --i) {
  I32 j = PL_scopestack_ix - i;
  ud->origin[depth - i] = PL_scopestack[j];
  PL_scopestack[j] += REAP_DESTRUCTOR_SIZE;
 }
 ud->origin[depth] = PL_savestack_ix;

 while (PL_savestack_ix + REAP_DESTRUCTOR_SIZE
                                       <= PL_scopestack[PL_scopestack_ix - 1]) {
  save_pptr(&ud->dummy);
 }

 SAVEDESTRUCTOR_X(reap_pop, ud);
}

#endif /* REAP_H */
