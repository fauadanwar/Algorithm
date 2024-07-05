//Minimum number of integers required such that each Segment contains at least one of them
//Last Updated : 14 Apr, 2023
//Given two arrays start[] and end[] consisting of positive integers denoting the starting and ending points of a segment respectively, the task is to find the minimum number of integers which lies in at least one of the given segments and each segment contains at least one of them.
//
//Examples:
//
//Input: start[] = {1, 2, 3}, end[] = { 3, 5, 6}
//Output: 3
//Explanation:
//All three ranges ([1, 3], [2, 5], [3, 6]) contains the integer 3.
//
//Input: start[] = {4, 1, 2, 5}, end[] = {7, 3, 5, 6}
//Output: 3 6
//Explanation:
//Segments {1, 3} and {2, 5} are contains the integer 3.
//Segments {4, 7} and {5, 6} contains the integer 6.

import Foundation

func minimumPoints(intervals: [[Int]]) -> [Int] {
    guard !intervals.isEmpty else {
        return []
    }
    
    // Sort intervals by their ending point
    let sortedIntervals = intervals.sorted { $0[1] < $1[1] }
    print(sortedIntervals)
    var points = [Int]()
    var lastPoint = sortedIntervals[0][1]
    points.append(lastPoint)
    
    // Iterate through the intervals
    for interval in sortedIntervals[1...] {
        // If the starting point of the current interval
        // is greater than the ending point of the last
        // selected interval, add its ending point
        if interval[0] > lastPoint {
            lastPoint = interval[1]
            points.append(lastPoint)
        }
    }
    
    // Return the number of points
    return points
}


    let intervals = [[1, 3], [2, 5], [3, 6]]
    print(minimumPoints(intervals: intervals)) // Output: 2
    
    let intervals1 = [[4, 7], [1, 3], [2, 5], [5, 6]]
    print(minimumPoints(intervals: intervals1)) // Output: 3

