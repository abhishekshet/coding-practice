package main

import (
	"testing"
)

func TestPalindrome(t *testing.T) {

	str1 := "NITIN"
	str2 := "ABHISHEK"

	rv1 := isPalindrome(str1)
	rv2 := isPalindrome(str2)

	if rv1 == false {
		t.Errorf("Expected: %v \n to be true: %v", rv1, str1)
	}

	if rv2 == true {
		t.Errorf("Expected: %v \n to be false: %v", rv2, str2)
	}

}
