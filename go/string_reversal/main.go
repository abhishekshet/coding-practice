package main

import (
	"fmt"
)

func main() {
	fmt.Println(reverseString("Working"))
}

func reverseString(str string) string {

	bs := []byte(str)
	for i := 0; i < len(bs)/2; i++ {
		var tmp byte
		tmp = bs[len(bs)-1-i]
		bs[len(bs)-1-i] = bs[i]
		bs[i] = tmp
	}

	return string(bs)
}
