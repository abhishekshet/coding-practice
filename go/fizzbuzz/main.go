package main

import (
	"fmt"
)

func main() {
	fizzbizz(5)
	fmt.Println("###########")
	fizzbizz(15)
}

func fizzbizz(number int) {

	for i := 1; i <= number; i++ {
		switch {
		case (i%15 == 0):
			fmt.Println("fizzbizz")
		case (i%3 == 0):
			fmt.Println("fizz")
		case (i%5 == 0):
			fmt.Println("bizz")
		default:
			fmt.Println(i)
		}

	}
}
