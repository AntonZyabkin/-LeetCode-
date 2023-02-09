func findGCD(_ nums: [Int]) -> Int {
    var gcd = nums.min()!
    let min = nums.min()!
    let max = nums.max()!
    while gcd > 0 {
        print(gcd)
        if max % gcd == 0 && min % gcd == 0 {
            break
        }
        gcd -= 1
    }
    return gcd
}

let nums = [12, 7, 6,8]
print(findGCD(nums))
