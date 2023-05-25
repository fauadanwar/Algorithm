//  Have the function BracketCombinations(num) read num which will be an integer greater than or equal to zero, and return the number of valid combinations that can be formed with num pairs of parentheses. For example, if the input is 3, then the possible combinations of 3 pairs of parenthesis, namely: ()()(), are ()()(), ()(()), (())(), ((())), and (()()). There are 5 total combinations when the input is 3, so your program should return 5.

func BracketCombinations(_ num: Int) -> Int
{
    var count = 0
    func genBrackets(_ left: Int, _ right: Int, _ str: String)
    {
        if left == 0 && right == 0 { count += 1 }
        if left > 0  { genBrackets(left - 1, right + 1, str + "(") }
        if right > 0 { genBrackets(left, right - 1, str + ")") }
    }
    genBrackets(num, 0, "")
    return count
}

print(BracketCombinations(3))

//A function to generate all combinations of well-formed parentheses from given number n.
func generateParenthesis(_ n: Int) -> [String] {
    var result = [String]()
    func genBrackets(left: Int, right: Int, str: String)
    {
        var rString: String = str
        if left == 0 && right == 0
        {
             result.append(rString)
        }
        if left > 0  { genBrackets(left: left - 1, right: right + 1, str: rString + "(") }
        if right > 0 { genBrackets(left: left, right: right - 1, str: rString + ")") }
    }
    genBrackets(left: n, right: 0, str: "")
    return result
}
print(generateParenthesis(3))

// Funciton to check if parenthesis are in right order.
func SearchingChallenge(_ str: String) -> Int  {
    
      var brax = 0

      for char in str {
        if char == "(" {
          brax += 1
        } else if char == ")" && brax == 0 {
          return 0
        } else if char == ")" {
          brax -= 1
        }
      }

      // Note: feel free to modify the return type of this function
      return brax == 0 ? 1 : 0
}
print(SearchingChallenge("(c(oder)) b(yte)"))

//    Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//    An input string is valid if:
//    Open brackets must be closed by the same type of brackets.
//    Open brackets must be closed in the correct order.
//    Every close bracket has a corresponding open bracket of the same type.
    func isValidParentheses(_ s: String) -> Bool {
        var bracketArray = [Character] ()
        var bracketDictionary:[Character:Character] = ["}": "{", ")": "(", "]": "["]
        for char in s
        {
            if let bracket = bracketDictionary[char]
            {
                if bracketArray.isEmpty == true || bracketArray.removeLast() != bracket
                {
                    return false
                }
            }
            else
            {
                bracketArray.append(char)
            }
        }
        return bracketArray.count == 0 ? true : false
    }

    print(isValidParentheses("()[]{}"))

