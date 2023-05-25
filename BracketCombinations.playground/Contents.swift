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

//  Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
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
