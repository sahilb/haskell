function average(array) {
    return array.reduce(add2, 0) / array.length;
}

function add2(x, y) {
    return x + y;
}