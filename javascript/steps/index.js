function steps(n) {
    steps_recursion(n)
}

function steps_non_recursion(n){
    for(i =0; i< n; i++){
        result = ""
        for(j=0; j< n; j++){

        }
        console.log(result)
    }
}


function steps_recursion(n, row = 0, stair = '') {

    if (n === row) {
        return
    }

    if (n === stair.length) {
        console.log(stair)
        return steps_recursion(n, row + 1)
    }

    if(stair.length <= row){
        stair += "#"
    }else{
        stair += " "
    }
    steps_recursion(n, row, stair)
}

module.exports = steps;