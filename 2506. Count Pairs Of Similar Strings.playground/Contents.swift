func similarPairs(_ words: [String]) -> Int {
    var c = 0, a = [[String: String]]()
    words.map{
        var d = [String: String]()
        $0.map{ d[String($0)] = String($0) }
        a.append(d)
    }
    for (n, v) in a.enumerated() {
        var t = n + 1
        while t < a.count {
            if v == a[t] {
                c += 1
            }
            t += 1
        }
    }
    return c
}


let words = ["nba","cba","dba"]
similarPairs(words)
