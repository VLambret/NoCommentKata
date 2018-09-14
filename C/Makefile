.PHONY : all clean test

all : build/cpp

clean :
	rm -f build/*

test : build/cpp
	bats test/*.sh

build/cpp : src/main.c
	gcc -g -Wall -Werror $^ -o $@
