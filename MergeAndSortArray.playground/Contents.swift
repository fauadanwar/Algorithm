func mergeAndSortArrays()
{
    let numbers = [[1,4,2,3],[4],[5,10,7,8,9]]
    
    //    Merge arrays using any of the following method
    //    reduce:
    //        let reduced = numbers.reduce([], +)
    //    flatMap:
    //        let flattened = numbers.flatMap { $0 }
    //    joined:
    let joined = Array(numbers.joined())
    print(joined)

//    Merge Using any of the following method
    let sortedArray = joined.sorted { $0 < $1 }
    //    merge sorted:
    let mergeSortedArray = mergeSort(joined)
    
    print(sortedArray)
    print(mergeSortedArray)
}
print(mergeAndSortArrays())

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}

func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedArray: [T] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}
