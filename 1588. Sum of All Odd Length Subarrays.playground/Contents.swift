func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
    var count = 0
    var start = 0
    for i in 0...arr.count {
        if i % 2 != 0 {
            while start <= (arr.count - i) {
                count += arr[start..<(start + i)].reduce(0, +)
                print("array: \(arr[start..<(start + i)])")
                print(arr[start..<(start + i)].reduce(0, +))
                start += 1
            }
            start = 0
        }
    }
    return count
}


let arr = [1,4,2,5,3]
sumOddLengthSubarrays(arr)



