/**
 * Left Riemann Sum
 * @param {Number} a start point of interval [a,b]
 * @param {Number} b end point of interval [a,b]
 * @param {Number} n amount of intervals, should be n%2 == 0
 * @param {Number} p precision
 * @param {Number} f function
 */
const leftRiemann = (a,b,n,p,f) =>{
    const dx = (b-a)/n;
    let result = 0;
    for(let i = 0; i < n; i++){
        result += f(a + dx * i);
    }
    return result = (result * dx).toFixed(p);
};

/**
 * Right Riemann Sum
 * @param {Number} a start point of interval [a,b]
 * @param {Number} b end point of interval [a,b]
 * @param {Number} n amount of intervals, should be n%2 == 0
 * @param {Number} p precision
 * @param {Number} f function
 */
const rightRiemann = (a, b, n, p, f) =>{
    const dx = (b-a)/n;
    let result = 0;
    for(let i = 1; i <= n; i++){
        result += f(a + dx * i);
    }
    return result = (result * dx).toFixed(p);
}

/**
 * Midpoint Rule
 * @param {Number} a start point of interval [a,b]
 * @param {Number} b end point of interval [a,b]
 * @param {Number} n amount of intervals, should be n%2 == 0
 * @param {Number} p precision
 * @param {Number} f function
 */
const midpointRule = (a, b, n, p, f) =>{
    const dx = (b-a) / n;
    let result = 0;
    for(let i = 0; i < n; i++){
        result += f(a + dx * (i + 0.5));
    }
    return result = (result * dx).toFixed(p);
}

/**
 * Trapezoidal Rule
 * @param {Number} a start point of interval [a,b]
 * @param {Number} b end point of interval [a,b]
 * @param {Number} n amount of intervals, should be n%2 == 0
 * @param {Number} p precision
 * @param {Number} f function
 */
const trapezoidalRule = (a, b, n, p, f) => {
    const dx = (b-a) / n;
    result = 0.5 * (f(a) + f(b));
    for(let i = 1; i < n; i++){
        let x = a + (i * dx);
        result += f(x);
    }

    return (result * dx).toFixed(p);
};

console.log("L", leftRiemann(4, 10, 1000, 5, x=> x * x ));
console.log("R", rightRiemann(4, 10, 1000, 5, x=> x * x ));
console.log("M", midpointRule(4, 10, 1000, 5, x=> x * x ));
console.log("T", trapezoidalRule(4, 10, 1000, 5, x=> x * x ));




