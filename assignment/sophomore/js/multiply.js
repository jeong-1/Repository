const fs = require('fs');

const file = fs.readFile('textfile.txt');
console.log(file);
console.log(file.toString());