func maximumValue(_ strs: [String]) -> Int {
    var m = 0
    strs.map {
        m = max(m, Int($0) ?? $0.count)
    }
    return m
}


let strs = ["alic3","bob","3","4","00000"]
print(maximumValue(strs))
