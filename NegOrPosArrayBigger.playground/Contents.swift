func maximumCount(_ nums: [Int]) -> Int {
    if nums.count > 0 && nums[0] > 0 {
        return nums.count
    }
    var pos = [Int]()
    var neg = [Int]()
    for i in nums {
        if i < 0 {
            neg.append(i)
        } else if i > 0 {
            pos.append(i)
        }
    }
    
    return pos.count > neg.count ? pos.count : neg.count
}
func maximumCount2(_ nums: [Int]) -> Int {
    return max(nums.filter{$0<0}.count, nums.filter{$0>0}.count)
}


print(maximumCount2([-1, 2, 3, 4, 5]))
