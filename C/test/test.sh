#!/usr/bin/env bats

COMMENT_PP=build/cpp
TMP_FILE=.comment_pp_test.tmp

NOCOMMENT_C=test/samples/inputs/nocomment.c

teardown() {
	rm -f $TMP_FILE
}

@test "Given a file without comments the result is identical to input file" {
	$COMMENT_PP < $NOCOMMENT_C > $TMP_FILE
	diff $NOCOMMENT_C $TMP_FILE
}
