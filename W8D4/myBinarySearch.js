// Assigned by Ayce

Array.prototype.myBSearch = function (target) {
    if (this.length === 0) {
        return -1;
    } else {
        let midIdx = Math.floor(this.length/2);
        let left = this.slice(0,midIdx);
        let right = this.slice(midIdx+1, this.length);
        if (target === this[midIdx]) {
            return midIdx;
        } else if (target < this[midIdx]) {
            return left.myBSearch(target);
        } else {
            let relIdx = right.myBSearch(target);
            if (relIdx === -1) {
                return -1;
            } else {
                return midIdx + relIdx + 1;
            }
        }
    }
}

console.log([1,4,6,8,9,10,11,15,19,22,100].myBSearch(10)) // => 5
console.log([1,4,6,8,9,10,11,15,19,22,100].myBSearch(100)) // => 10
console.log([1,4,6,8,9,10,11,15,19,22,100].myBSearch(21)) // => -1
console.log([1,4,6,8,9,10,11,15,19,22,100].myBSearch(1)) // => 0
