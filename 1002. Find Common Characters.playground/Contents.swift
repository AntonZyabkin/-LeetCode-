func commonChars(_ words: [String]) -> [String] {
    var output = Set(words.first!.map { String($0) })
    words.map {
        output = output.intersection(Set($0.map { String($0) }))
    }
    return Array(output)
}

let words = ["bella","label","roller"]
commonChars(words)


var test = "qqqqq"
var test2 = "qqqq"

