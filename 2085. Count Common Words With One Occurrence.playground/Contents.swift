func countWords(_ words1: [String], _ words2: [String]) -> Int {
    var d1 = [String: Int]()
    var d2 = [String: Int]()
    words1.map { (d1[$0] != nil) ? (d1[$0]! += 1) : (d1[$0] = 1) }
    words2.map { (d2[$0] != nil) ? (d2[$0]! += 1) : (d2[$0] = 1) }
    var c = 0
    for i in d1 {
        if d2[i.key] == 1, i.value == 1 {
            c += 1
        }
    }
    return c
}

let words1 = ["leetcode","is","amazing","as","is"], words2 = ["amazing","leetcode","is"]
print(countWords(words1, words2))
