func subsetXORSum(_ nums: [Int]) -> Int {
    var res: [[Int]] = [[]] // count = 1, coz outer array is initialized with empty [] inner array.
    var sum: Int = 0
    
    // Find all the subset of an array
    for num in nums {
        print("It's num = \(num)")
        print("It's RESULT = \(res)")

        for subset in res {
            res.append(subset + [num]) // adding current num to all the subarray of res.
            sum += res.last!.reduce(0) { $0 ^ $1 }
            print("SUBSET = \(subset)")
        }
    }
    return sum
}
let nums = [3,4,5,6,7,8]
subsetXORSum(nums)
