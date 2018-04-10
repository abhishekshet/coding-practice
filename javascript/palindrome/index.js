function palindrome(str) {
    return palindrome_functional(str)
}

function palindrome_quick(str) {
    var reversed = str.split("").reverse().join("")
    return reversed === str
}


function palindrome_tmp_variable(str){
    for(i = 0; i < str.length/2 ; i++) {
        if (str[i] != str[str.length -1 - i]) {
            return false
        }
    }
    return true
}

function palindrome_functional(str) {
    return str.split('').every((char, i) => {
            return char === str[str.length -1 - i]
    });
}


module.exports = palindrome;