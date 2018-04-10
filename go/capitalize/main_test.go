package main

import "testing"

func TestCapitalize(t *testing.T) {

	str1 := "i am awesome i know this"

	result := capitalize(str1)

	if result != "I Am Awesome I Know This" {
		t.Errorf("Expected %v but got : %v ", "I Am Awesome I Know This", result)
	}

}
