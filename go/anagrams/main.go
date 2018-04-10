package main

import (
	"fmt"
	"log"
	"regexp"
	"sort"
	"strings"
)

func main() {
	fmt.Println(isAnagram("hello", "llohe"))
}

func isAnagram(str1 string, str2 string) bool {

	cleanStr1 := sortString(removeSpecialChars(str1))
	cleanStr2 := sortString(removeSpecialChars(str2))

	return cleanStr1 == cleanStr2

}

func sortString(str string) string {

	strNew := strings.Split(str, "")
	sort.Strings(strNew)
	return strings.Join(strNew, "")
}

func removeSpecialChars(str string) string {
	reg, err := regexp.Compile("[^a-zA-Z0-9]+")
	if err != nil {
		log.Fatal(err)
	}

	lcs := strings.ToLower(str)

	return reg.ReplaceAllString(lcs, "")

}
