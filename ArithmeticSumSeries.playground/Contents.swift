//Find the sequence sum
//Problem statement :
//
//Rohit loves to play with sequences so he has given you a sequence to solve. To prove to him that you are a good coder, you accept the challenge. Find the sum of the sequence. Given three integers i,j,k find i+(i+1)+(i+2)+(i+3)…j+(j-1)+(j-2)+(j-3)……..k
//
//CONSTRAINTS:
//
//-108<=i,j,k<=108
//i,k<=j
//SAMPLE CASE0 :
//
//0 → i=0
//
//5 → j=5
//
//-1 → k=-1
//
//SAMPLE OUTPUT 0:
//
//24
//
//EXPLANATION 0:
//
//0+1+2+3+4+5+4+3+2+1+0-1 =24

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
print(sum) // Output: 70

