package common::sense;

our $VERSION = 3.72;

# overload should be included

sub import {
   local $^W; # work around perl 5.16 spewing out warnings for next statement
   # use warnings
   ${^WARNING_BITS} ^= ${^WARNING_BITS} ^ "\x3c\x3f\x33\x00\x0f\xf0\x0f\xc0\xf0\xfc\x33\x00\x00\x00";
   # use strict, use utf8; use feature;
   $^H |= 0x1c820fc0;
   @^H{qw(feature_unicode feature_state feature_say feature_evalbytes feature_fc feature_switch feature___SUB__)} = (1) x 7;
}

1
