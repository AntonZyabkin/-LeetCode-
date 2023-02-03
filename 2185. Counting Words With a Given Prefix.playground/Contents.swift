func prefixCount(_ words: [String], _ pref: String) -> Int {
    words
        .filter { $0.hasPrefix(pref) }
        .count
}

let words = ["pay","attention","practice","attend"], pref = "at"


print(prefixCount(words, pref))
