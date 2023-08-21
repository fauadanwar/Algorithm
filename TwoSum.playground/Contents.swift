
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numberMap:[Int:Int] = [Int:Int]()
    for index in 0..<nums.count
    {
        let num = nums[index]
        let diffrence = target - num
        if let firstIndex = numberMap[diffrence]
        {
            return [firstIndex, index]
        }
        numberMap[num] = index
    }
    return [0,0]
}

var nums = [2,7,11,15], target = 9
print(twoSum(nums, target))
nums = [3,2,4]; target = 6
print(twoSum(nums, target))
nums = [3,3]; target = 6
print(twoSum(nums, target))
