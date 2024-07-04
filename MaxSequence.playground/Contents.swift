//Picking Tickets
//Problem statement :
//
//There are consecutive lighthouses present in the x axis of a plane.You are given n, which represents the the number of light position and x coordinate array which represent the position of the lighthouses.You have to find maximum lighthouses which have absolute difference less than or equal to 1 between adjacent numbers.
//
//CONSTRAINTS
//
//1<=n<105
//1<=tickets[i]<=109
//SAMPLE CASE 0:
//
//SAMPLE INPUT 0:
//
//4  → tickets[] size=4
//
//4   → tickets[] =[4,13,2,3]
//
//13
//
// 2
//
//3
//
//SAMPLE OUTPUT 0:
//
//3
//
//EXPLANATION
//
//There are 2 subsequences of tickets that contain consecutive integers when sorted. {2,3,4} and {13} . These sequences has m values as 3 and 1 respectively . return maximum value of m which is 3.
import Foundation

// Function to find the length of the longest consecutive subarray
func longestConsecutiveSubarray(arr: [Int]) -> Int {
    guard !arr.isEmpty else {
        return 0
    }
    
    let sortedArr = arr.sorted()
    var count = 0
    var maxLength = 1

    for i in 0..<sortedArr.count - 1 {
        if sortedArr[i + 1] - sortedArr[i] == 0 || sortedArr[i + 1] - sortedArr[i] == 1 {
            count += 1
        } else {
            if count + 1 > maxLength {
                maxLength = count + 1
            }
            count = 0
        }
    }

    // Final check in case the longest sequence ends at the last element
    if count + 1 > maxLength {
        maxLength = count + 1
    }

    return maxLength
}
let result = longestConsecutiveSubarray(arr: [4,13,2,3])
print(result)
