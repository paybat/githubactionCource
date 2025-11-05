function greet(name){
    return `Hello, ${name}`
}

module.exports = greet;


if(require.main === module){
    console.log(greet('Hicham'))
}


///// To run this file directly, use the command: node src/index.js