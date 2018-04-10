package main

import (
	"fmt"
)

func main() {
	fmt.Println(maxChar("ab1c1d1e1f1g1"))
}

func maxChar(str string) string {

	c := make(map[string]int)
	bs := []byte(str)
	max := ""

	for _, ch := range bs {
		_, key := c[string(ch)]
		if key {
			c[string(ch)]++
		} else {
			c[string(ch)] = 1
		}

		if c[max] < c[string(ch)] {
			max = string(ch)
		}

	}

	return max
}
