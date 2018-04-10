function reverse(str) {
    return reverse_string_manipulation(str)
}

function reverse_tmp_variable(str) {
    const char_arr = [...str]
    const len =  char_arr.length
    for(var i = 0; i< (len)/2 ; i++) {
        const tmp = char_arr[len - 1 - i ]
        char_arr[len - 1 - i ] = char_arr[i]
        char_arr[i] = tmp
    }

    return char_arr.join("")
}

function reverse_functioal_programming(str) {

    return str.split('').reduce((reversed, character) => {
        return character + reversed;
    }, '');

}


function reverse_quick(str) {
    return str.split("").reverse().join("");
}


function reverse_string_manipulation(str) {

    let reversed = "";

    for (let character of str) {
        reversed = character + reversed;
    }
    return reversed;

}


module.exports = reverse;


// To use the debugger use these steps
//
// 1. add the debugger statement at the desired spot
// 2. call the function with the statement at the end of the export statement
// 3. on the termial use node inspect filename