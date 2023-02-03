func differenceOfSum(_ nums: [Int]) -> Int {
    let summ = nums.reduce(0) { a, b in a + b }
    var summ2 = 0
    nums.map { String($0)}.reduce("") { a, b in a + b }.map { summ2 += Int(String($0))!}
    return summ - summ2
}
let nums = [1,15,6,3]
print(differenceOfSum(nums))

    
