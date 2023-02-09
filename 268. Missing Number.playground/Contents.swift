func missingNumber(_ nums: [Int]) -> Int {
    let tmp = nums.sorted(by: <)
    for (n, v) in tmp.enumerated() {
        if (v - n) == 1 {
            return n
        }
    }
    if tmp.last! == tmp[(tmp.count - 1)] {
        return tmp.last! + 1
    } else {
        return 0
    }
}

let nums = [9,6,4,2,3,5,7,0,1]

print(missingNumber(nums))
