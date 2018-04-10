package main

import "testing"

func TestMaxChar(t *testing.T) {

	str1 := "a"
	str2 := "babcdefghijklmnaaaaa"
	str3 := "ab1c1d1e1f1g1"

	rs1 := maxChar(str1)
	rs2 := maxChar(str2)
	rs3 := maxChar(str3)

	if rs1 != "a" {
		t.Errorf("Expected %v but got : %v ", "a", rs1)
	}

	if rs2 != "a" {
		t.Errorf("Expected %v but got : %v ", "a", rs2)
	}

	if rs3 != "1" {
		t.Errorf("Expected %v but got : %v ", "1", rs3)
	}

}
