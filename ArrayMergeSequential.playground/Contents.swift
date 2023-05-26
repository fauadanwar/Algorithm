//Merge Array sequentially by taking one element from each array at a time
//Ex. firstArray [1,4,2,3], secondArray: [5,10,7,8,9] result: [1, 5, 4, 10, 2, 7, 3, 8, 9]

func mergeArray <T>(firstArray: Array<T>, secondArray:Array<T>) -> Array<T> {
    if firstArray.isEmpty
    {
        return secondArray
    }
    else if secondArray.isEmpty
    {
        return firstArray
    }
    else
    {
        var returnArray = [T]()
        var minSize = firstArray.count
        var isfirstArrayLarge = false
        if secondArray.count < firstArray.count
        {
            minSize = secondArray.count
            isfirstArrayLarge = true
        }
        var curruntIndex = 0

        while curruntIndex < minSize {
            returnArray.append(firstArray[curruntIndex])
            returnArray.append(secondArray[curruntIndex])
            curruntIndex += 1
        }
        if isfirstArrayLarge
        {
            returnArray.append(contentsOf: firstArray.suffix(from: curruntIndex))
        }
        else
        {
            returnArray.append(contentsOf: secondArray.suffix(from: curruntIndex))
        }
        return returnArray
    }
}
print(mergeArray(firstArray: [1,4,2,3], secondArray: [5,10,7,8,9]))
