//Consecutive Characters
// The power of the string is the maximum length of a non-empty substring that contains only one unique character.
//
//Given a string s, return the power of s.
//
//
//
//Example 1:
//
//Input: s = "leetcode"
//Output: 2
//Explanation: The substring "ee" is of length 2 with the character 'e' only.
//Example 2:
//
//Input: s = "abbcccddddeeeeedcba"
//Output: 5
//Explanation: The substring "eeeee" is of length 5 with the character 'e' only.

class Solution {
    func maxPower(_ s: String) -> Int {
        var char = s.first
        var maxCount = 0
        var current = 0
        for currentChar in s {
            if currentChar == char {
                current += 1
            } else {
                maxCount = max(maxCount, current)
                char = currentChar
                current = 1
            }
        }
        return max(maxCount, current)
    }
}
