//The challenge is to find all the pairs of two integers in an unsorted array that sum up to a given target.
//For example, if the array is [3, 5, 2, -4, 8, 11] and the sum is 7, your program should return [[11, -4], [2, 5]] because 11 + -4 = 7 and 2 + 5 = 7.
func listOfTwoSome(inputArray: [Int], target: Int) -> [[Int]]
{
    var resultArray = [[Int]]()
    var numberSet = Set<Int>()
    
    for nextNumber in inputArray {
        // calculate firstNumber - current element
        let sumMinusElement = target - nextNumber
        
        // check if this number exists in hash table
        // if so then we found a pair of numbers that sum to firstNumber
        if (numberSet.contains(sumMinusElement))
        {
            resultArray.append([nextNumber, sumMinusElement])
        }
        
        // add the current number to the hash table
        numberSet.insert(nextNumber)
    }
    return resultArray
}

print(listOfTwoSome(inputArray: [4, 5, 6, 10, 11, 4, -3, -5, 3, 15, 2, 7], target: 17))
