/*
Problem: Median of Two Sorted Arrays of diffrent size

 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

Example 1:

Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.
Example 2:

Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 

Constraints:

nums1.length == m
nums2.length == n
0 <= m <= 1000
0 <= n <= 1000
1 <= m + n <= 2000
-106 <= nums1[i], nums2[i] <= 106
*/


func findMedianSortedArrays(_ n1: [Int], _ n2: [Int]) -> Double {
    let ln1 = n1.count, ln2 = n2.count
    var arr = [Int](repeating: 0, count: ln1 + ln2)
    var val = (a: ln1 - 1, b: ln2 - 1, c: ln1 + ln2 - 1)
        while val.c >= 0 {
        if val.b < 0 || val.a >= 0 && n1[val.a] > n2[val.b] {
            arr[val.c] = n1[val.a]
            val.a = (val.a - 1)
        } else {
            arr[val.c] = n2[val.b]
            val.b = (val.b - 1)
        }
        val.c = val.c - 1
        }
    let half = arr.count / 2, mid = arr[half]
    return arr.count % 2 == 0 ? .init(arr[half-1] + mid) / 2 : .init(mid)
}

print(findMedianSortedArrays([1,3], [2]))
