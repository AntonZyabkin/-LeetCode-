func getConcatenation(_ nums: [Int]) -> [Int] {
    
    return nums + nums
}


let test = [2, 4, 3, 5, 1, 0]
print(getConcatenation(test))
var t = [Int]()


func buildArray(_ nums: [Int]) -> [Int] {
    return nums.map { nums[$0]}
}
print(buildArray(test))
