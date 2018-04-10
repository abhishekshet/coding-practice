package main

import (
	"fmt"
)

func main() {
	fmt.Println(reverseInt(2))
}

func reverseInt(number int) int {

	n := number
	rn := 0
	nn := false
	if number < 0 {
		n = -number
		nn = true
	}
	if n%10 == n {
		return number
	}

	for n != 0 {
		rn = (rn * 10) + (n % 10)
		n = (n / 10)
	}
	if nn {
		rn = -rn
	}

	return rn

}
