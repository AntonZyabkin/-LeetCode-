func sumBase(_ n: Int, _ k: Int) -> Int {
    var out = 0

    String(n, radix: k).map { out += Int(String($0))!}
    return out
}

let n = 34, k = 6

Array(String(n, radix: k)).reduce(0) { partialResult, st in
    partialResult += Int(String(st))!
}
print(sumBase(n, k))

