//  factorial(num) take the num parameter being passed and return the factorial of it. For example: if num = 4, then your program should return (4 * 3 * 2 * 1) = 24. For the test cases, the range will be between 1 and 18 and the input will always be an integer.


func factorial(_ num: Int) -> Int {
//    // Recursive method
//    if num == 0 {
//        return 1
//    }
//    return num * factorial(num - 1)
    
    return (1...num).reduce(1,*)
}

print(factorial(4))
