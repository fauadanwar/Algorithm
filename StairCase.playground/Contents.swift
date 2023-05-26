//    You are climbing a staircase. It takes n steps to reach the top.
//    Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
    func stairCase(num: Int) -> Int
    {
        var one = 1, two = 1
        for _ in 0..<num - 1
        {
            let temp = one
            one = two + one
            two = temp
        }
        return one
    }
    print(stairCase(num: 5))
