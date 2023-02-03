
let intArray = [1, 2, 3, 4, 5, 6, 7]
intArray.reduce(intArray.first) { f, s in
    if f ?? 0 < s {
        return f! + s
    }
    return f
}

let maxNumber = Array(-12...(-10))
    .reduce(0) { (total, number) in max(total, number) }
print(maxNumber)

let digits = ["3", "1", "4", "1"]
print (digits.reduce(0) { partialResult, str in
    Int(String(partialResult) + str)!
})
