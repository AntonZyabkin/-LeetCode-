func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            
    var dict = [Int: Int]()
    
    for (i, value) in nums.enumerated() {
        let needed = target - value
        if let second = dict[needed] {
            return [second , i]
        } else {
            dict[value] = i
        }
    }
    return [-1, -1]
}


var array = [1, 2, 5, 1, 4]
array.indices
var target = 7

print(twoSum(array, target))
