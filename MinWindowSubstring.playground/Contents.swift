//minWindow(strArr) take the array of strings stored in strArr, which will contain only two strings, the first parameter being the string N and the second parameter being a string K of some characters, and your goal is to determine the smallest substring of N that contains all the characters in K. For example: if strArr is ["aaabaaddae", "aed"] then the smallest substring of N that contains the characters a, e, and d is "dae" located at the end of the string. So for this example your program should return the string dae.
//
//Another example: if strArr is ["aabdccdbcacd", "aad"] then the smallest substring of N that contains all of the characters in K is "aabd" which is located at the beginning of the string. Both parameters will be strings ranging in length from 1 to 50 characters and all of K's characters will exist somewhere in the string N. Both strings will only contains lowercase alphabetic characters.

func minWindow(s: String, t: String) -> String {
    for index in t.count..<s.count {
        for i in 0...s.count - index {
            let start = s.index(s.startIndex, offsetBy: i)
            let end = s.index(s.startIndex, offsetBy: i + index)
            
            let smallChunk = s[start..<end]
            var slice = smallChunk
            for char in t {
                if let index = slice.firstIndex(of: char) {
                    slice.remove(at: index)
                }
            }
            if slice.count == index - t.count {
                return String(smallChunk)
            }
        }
    }
    return s
}
print(minWindow(s: "ADOBECODEBANC", t: "ABCD"))
