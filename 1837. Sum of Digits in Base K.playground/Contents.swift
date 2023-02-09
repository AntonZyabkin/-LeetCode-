func sumBase(_ n: Int, _ k: Int) -> Int {
    Array(String(n, radix: k)).reduce(0) { partialResult, numString in
        print(partialResult)
        return partialResult + Int(String(numString))!
    }
}

let n = 34, k = 6


print(sumBase(n, k))

