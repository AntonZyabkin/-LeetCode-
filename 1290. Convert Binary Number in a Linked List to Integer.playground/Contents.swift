func getDecimalValue(_ head: [Int]) -> Int {
    var str = ""
    head.map { str += String($0)}
    return Int(str, radix: 2) ?? 0
}

let head = [1,0,1]
print(getDecimalValue(head))
