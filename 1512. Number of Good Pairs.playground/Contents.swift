let nums = [1,2,3,1,1,3]
nums.enumerated()
func numIdenticalPairs(_ nums: [Int]) -> Int {
    var counter = 0
    for (i, v) in nums.enumerated() {
        for j in (i + 1)..<nums.count {
            if nums[i] == nums[j] {
                counter += 1
            }
        }
    }

    return counter
}

print(numIdenticalPairs(nums))
