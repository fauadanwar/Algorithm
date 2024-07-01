//You are given two positive integers n and k. A factor of an integer n is defined as an integer i where n % i == 0.
//
//Consider a list of all factors of n sorted in ascending order, return the kth factor in this list or return -1 if n has less than k factors.

class Solution {
    func kthFactor(_ n: Int, _ k: Int) -> Int {
        var factors:[Int] = []
        var j = n
        for i in 1...j
        {
            if n%i == 0
            {
              factors.append(i)
              j = n/i
            }
        }

        // factors.append(n)
        if factors.count < k
        {
            return -1
        }
        else
        {
            return factors[k-1]
        }
    }
}
//Input: n = 12, k = 3
//Output: 3

print(Solution().kthFactor(12, 3))
