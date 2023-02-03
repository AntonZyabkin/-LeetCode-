func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let alphDict = ["a" : ".-",
                    "b" : "-...",
                    "c" : "-.-.",
                    "d" : "-..",
                    "e" : ".",
                    "f" : "..-.",
                    "g" : "--.",
                    "h" : "....",
                    "i" : "..",
                    "j" : ".---",
                    "k" : "-.-",
                    "l" : ".-..",
                    "m" : "--",
                    "n" : "-.",
                    "o" : "---",
                    "p" : ".--.",
                    "q" : "--.-",
                    "r" : ".-.",
                    "s" : "...",
                    "t" : "-",
                    "u" : "..-",
                    "v" : "...-",
                    "w" : ".--",
                    "x" : "-..-",
                    "y" : "-.--",
                    "z" : "--.."]
    var ms = [String: String]()
    var str = ""
    words.map {
        $0.map {
          str += alphDict[String($0)]!
        }
        ms[str] = $0
        str = ""
    }
    return ms.count
}


let words = ["gin","zen","gig","msg"]

print(uniqueMorseRepresentations(words))
 
