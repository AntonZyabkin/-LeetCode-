func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
    var dict: [Int: Int] = [:]
    for i in lowLimit...highLimit {
        let num = String(i)
            .compactMap { $0.wholeNumberValue }
            .reduce(0, +)
        if let _ = dict[num] {
            dict[num]! += 1
        } else {
            dict[num] = 1
        }
    }
    return dict.values.max()!
}


let lowLimit = 1, highLimit = 500
print(countBalls(lowLimit, highLimit))
