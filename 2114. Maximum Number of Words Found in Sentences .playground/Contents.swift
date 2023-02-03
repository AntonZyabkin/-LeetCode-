import Darwin
func mostWordsFound(_ sentences: [String]) -> Int {
    var maximum = 0
    sentences.map{ sentence in
        maximum = max(maximum, sentence.split(separator: " ").count)
    }
    return maximum
}



let stringArray = ["sdcsdc dcsdc sdc sdc c c 3 3 3 3", "sdc sdc c c", "ss ssa fhb"]
mostWordsFound(stringArray)

stringArray.reduce(0) {
    max($0, $1.reduce(1, { x, y in
        if y == " " { return x + 1 }
        return x
    }))
}
