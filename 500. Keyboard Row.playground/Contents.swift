func findWords(_ words: [String]) -> [String] {
    var output = [String]()
    for i in words {
        let number = String(i.first!).keyboardLineNumber()
        var status = true
        for ch in i {
            if String(ch).keyboardLineNumber() != number {
                status = false
            }
        }
        if status {
            output.append(i)
        }
        status = true
    }
    return output
}

extension String {
    func keyboardLineNumber() -> Int {
        let test = self.lowercased()
        switch test {
        case "q", "w", "e", "r", "t", "y", "u", "i", "o", "p":
            return 1
        case "a", "s", "d", "f", "g", "h", "j", "k", "l":
            return 2
        case "z", "x", "c", "v", "b", "n", "m":
            return 3
        default:
            return 0
        }
    }
}
let words = ["adsdf","sfd"]

print(findWords(words))


let test = "dsfsdvsdvsdvsdvsd"

let setsts = Set(test.lowercased())
