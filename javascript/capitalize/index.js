function capitalize(str) {
    return capitalize_longer_way(str)
}

function capitalize_functional_way(str) {
    const words = str.split(" ")
    const result = []
    for(let word of words) {
        result.push(word[0].toUpperCase() + word.slice(1))
    }

    return result.join(" ")
}


function capitalize_longer_way(str) {
    let result = str[0].toUpperCase()

    for(let i = 1; i< str.length ; i++ ){

        if(str[i-1] === " "){
            result += str[i].toUpperCase()
        }else{
            result += str[i]
        }

    }
    return result
}

module.exports = capitalize;