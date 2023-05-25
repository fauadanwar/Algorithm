//reverseArray function reverses an Array of generic type. The input is given as an array of Type s.
func reverseArray<T>(_ s: inout [T]) {
    var left = 0
    var right = s.count - 1
    
    while left < right {
        s.swapAt(left, right)
        left += 1
        right -= 1
    }
}
var numbers: [Int] = [10, 20, 30, 40, 50]
reverseArray(&numbers)
// numbers = numbers.reversed()
print(numbers)
