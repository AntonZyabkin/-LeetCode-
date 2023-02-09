import Darwin
var text = """
Поступь нежная, легкий стан,
Если б знала ты сердцем упорным,
Как умеет любить хулиган,
Как умеет он быть покорным.
"""

let low = text.lowercased()
//print(low)


let strictText = text.lowercased().split(separator: "\n")
//print(strictText)


let singleWordsArray = text
    .split(separator: "\n")
    .map { $0.split(separator: " ")}
//print(singleWordsArray)

var singleWords = text
    .split(separator: "\n")
    .flatMap { $0.split(separator: " ")}
//print(singleWords)


let wordString = singleWords.reduce("", +).filter {"йцукенгшщзхфывапролджячсмитьбюэ".contains($0)}
//print(wordString)

let letterCount = wordString.reduce(into: [:]) { counts, letter in
    counts[letter, default: 0] += 1
}
//print(letterCount)

// .mapValue возвращает из заданного словаря новый с измененным в замыкании значением
// Dictionary(groupeing: )
let letterCountDictionary = Dictionary(grouping: wordString) {$0}
    .mapValues { array in
        array.count
    }

print(letterCountDictionary)
//print(wordString)


let letterStat = letterCountDictionary
    .sorted(by: <)
    .map { "\($0.0) : \($0.1)"}
//print(letterStat)

let countStat = letterCountDictionary
    .sorted(by: { $0.value > $1.value})
    .map { "\($0.0) : \($0.1)"}

//print(countStat)




