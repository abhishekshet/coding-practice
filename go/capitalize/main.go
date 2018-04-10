package main

import (
	"fmt"
	"strings"
)

func main() {
	result := capitalizeFunctional("working lets see")
	fmt.Println(result)
}

func capitalize(str string) string {
	return capitalizeFunctional(str)
}

func capitalizeFunctional(str string) string {

	result := []string{}
	words := strings.Split(str, " ")

	for _, word := range words {
		uc := strings.ToUpper(string(word[0]))
		rc := word[1:len(word)]
		nw := uc + rc

		result = append(result, nw)
	}

	return strings.Join(result, " ")

}
