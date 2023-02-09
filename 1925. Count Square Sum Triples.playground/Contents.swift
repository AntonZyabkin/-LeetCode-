func countTriples(_ n: Int) -> Int {
    var counter = 0
    
    for i in 1..<n {
        for j in i..<n {
            let tmp = sqrt(pow(Double(i), 2) + pow(Double(j), 2))
            if tmp - Double(Int(tmp)) == 0 && (tmp) <= Double(n) {
                i == j ? (counter += 1) : (counter += 2)
            }
        }
    }
    return counter
}
