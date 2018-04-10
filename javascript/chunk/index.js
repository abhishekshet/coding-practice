function chunk(array, size) {
    return chunk_with_slice(array, size)
}

function chunk_functional(array, size){

    const result = []
    while(array.length > 0) {
        var temp = []
        for (var i = 0; i < size; i++) {
                var val = array.shift()
            if(val) {
                temp.push(val)
            }
        }
        result.push(temp)
    }
    return result
}

function chunck_long(array, size){

    const chunked = []
    for( let element of array) {
        const last = chunked[chunked.length -1];

        if(!last || last.length === size) {
            chunked.push([element])
        }else{
            last.push([element])
        }
    }
    return chunked
}


function chunk_with_slice(array, size) {
    const chunked = []
    let index = 0

    while (index < array.length) {
        chunked.push(array.slice(index, (index + size)))
        index= index + size;
    }
    return chunked
}


module.exports = chunk;