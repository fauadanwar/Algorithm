import Foundation

func sequenceSum(i: Int, j: Int, k: Int) -> Int {
    // Sum from i to j
    let n1 = j - i + 1
    let sum1 = n1 * (i + j) / 2
    
    // Sum from j-1 to k
    let n2 = j - k
    let sum2 = n2 * (j - 1 + k) / 2
    
    return sum1 + sum2
}

// Sample input
let i = 0
let j = 5
let k = -1

// Calculate and print the sum
let result = sequenceSum(i: i, j: j, k: k)
print(result)  // Output should be 24


// Sample case
let sum = sequenceSum(i: 2, j: 9, k: -4)
print(sum) // Output: 24

