package main

import (
	"fmt"
	"strings"
)

func main() {
	str := "NITIn"
	rs := isPalindrome(str)
	fmt.Printf("This is the result: %t \n", rs)
}

func isPalindrome(str string) bool {
	strLower := strings.ToLower(str)
	bs := []byte(strLower)
	for i := 0; i < len(bs)/2; i++ {
		if bs[i] != bs[len(bs)-1-i] {
			return false
		}
	}
	return true
}
