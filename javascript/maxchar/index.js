function maxChar(str) {
    return maxCharWithOtherSyntax(str)

}

function maxCharWithHash(str) {
    const inp_arr = str.split('')
    const max = inp_arr[0]
    const count = {}

    inp_arr.forEach((char) => {
        if(count[char]){
            count[char]++;
    }else{
        count[char] = 1;
    }
    max = (count[char] > count[max]) ? char : max
})

    return max
}


function maxCharWithOtherSyntax(str) {

    const chars = {};
    var max = str[0]

    for(let char of  str) {
        chars[char] = chars[char] + 1 || 1
         max = (chars[char] > chars[max]) ? char : max
    }
    return max
}


module.exports = maxChar;