package main

import "testing"

func TestIsAnagram(t *testing.T) {

	rs1 := isAnagram("Hello", "llohe")
	rs2 := isAnagram("One One", "Two two two")
	rs3 := isAnagram("Whoa! Hi!", "Hi! Whoa!")

	if rs1 != true {
		t.Errorf("Expected %v but got %v", true, false)
	}

	if rs2 != false {
		t.Errorf("Expected %v but got %v", false, true)
	}

	if rs3 != true {
		t.Errorf("Expected %v but got %v", true, false)
	}

}
