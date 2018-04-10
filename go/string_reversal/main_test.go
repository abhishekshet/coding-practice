package main

import (
	"testing"
)

func TestReverseString(t *testing.T) {

	str := "Hello string"

	rs := reverseString(str)

	if rs != "gnirts olleH" {
		t.Errorf("Expected: %v \nBut got: %v", rs, str)
	}

	if len(rs) != len(str) {
		t.Errorf("Length of input and output not equal")
	}

}
