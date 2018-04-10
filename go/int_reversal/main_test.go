package main

import "testing"

func TestIntReversal(t *testing.T) {
	n1 := 32
	n2 := -23
	n3 := 0

	r1 := reverseInt(n1)
	r2 := reverseInt(n2)
	r3 := reverseInt(n3)

	if r1 != 23 {
		t.Errorf("Incorrect int reversal")
	}

	if r2 != -32 {
		t.Errorf("Incorrect int reversal")
	}

	if r3 != 0 {
		t.Errorf("Incorrect int reversal")
	}

}
