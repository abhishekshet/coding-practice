function reverseInt(number){
    return reverseint_string(number)
}

function reverseint_string(number){

    reversedNumberString = number.toString().split('').reduce((reversed, character) => {
        return(character + reversed);
    }, "");

    return parseInt(reversedNumberString) * Math.sign(number)
}


module.exports = reverseInt;