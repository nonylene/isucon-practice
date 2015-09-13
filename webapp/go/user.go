package main

type User struct {
	ID           int
	Login        string
	PasswordHash string
	Salt         string
}
