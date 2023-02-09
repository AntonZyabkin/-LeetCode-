func countEven(_ num: Int) -> Int {
    var c = 0
    for i in 2...num {
        let sum = String(i)
            .reduce(into: 0) { a, ch in
                a += Int(String(ch))!
            }
        if sum % 2 == 0 {
            c += 1
        }
    }
    return c
}

countEven(4)
