// riemann sum
let f = (x) => x * x;
let a = 4;
let b = 10;
let n = 1000;
const dx = (b-a)/n;
let x = a;
let y_array = [];

while(x <= b){
    x += dx;
    y_array.push(f(x));
}
let result = y_array.map(x => dx * x).reduce((a,b) => a + b);
console.log(result.toFixed(2));




