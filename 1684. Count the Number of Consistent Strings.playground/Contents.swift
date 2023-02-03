func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    var counter = 0
    var status = false
    
    for word in words {
        for w in word {
            if allowed.contains(w) {
                status = true
            } else {
                status = false
                break
            }
        }
        if status {
            print(word)
            counter += 1
        }
        status = false
    }
    return counter
}

let allowed = "aab"
let words = ["ad","bd","aaab","baa","badab"]

countConsistentStrings(allowed, words)
