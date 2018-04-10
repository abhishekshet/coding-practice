function anagrams(stringA, stringB) {
    return anagram_sort_technique(stringA,stringB)
}

function anagrams_first_pass(stringA,stringB) {
    return(compare(getCharCountStore(stringA), getCharCountStore(stringB)))
}

function anagram_sort_technique(stringA,stringB) {
    return (cleanString(stringA) === cleanString(stringB))
}


function cleanString(str){
    return str.replace(/[^\w]/g, "").toLowerCase().split("").sort().join("")
}

function getCharCountStore(strInp){
    const chars = {};
    for(let char of  strInp.replace(/[^\w]/g, "").toLowerCase()) {
        chars[char] = chars[char] + 1 || 1;
    }
    return chars
}

function compare(obj1, obj2){
    if (Object.keys(obj1).length !== Object.keys(obj2).length){
        return false
    }

    for(let attr in obj1) {
        if(obj1[attr] !== obj2[attr]){
            return false
        }
    }
    return true
}

module.exports = anagrams;