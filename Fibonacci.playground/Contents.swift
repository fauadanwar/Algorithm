//Fibonacci of Number using recursion or extra memory
func fibonacciReccursion(n: Int) -> Int
{
    guard n > 1 else {
        return n
    }
    return fibonacciReccursion(n: n - 1) + fibonacciReccursion(n: n - 2)
}

func fibonacciUsignMemory(n: Int) -> Int
{
    var a = 0, b = 1, c = 0
    guard n > 1 else {
        return a
    }
    for _ in 2...n
    {
        c = a + b
        a = b
        b = c
    }
    return b
}

print(fibonacciUsignMemory(n: 9))
print(fibonacciReccursion(n: 9))
