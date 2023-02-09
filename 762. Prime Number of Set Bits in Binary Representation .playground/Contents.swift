func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
    var counter = 0
    (left...right)
        .map {
            let set = String($0, radix: 2).reduce(into: 0) { sum, new in
                sum += Int(String(new))!
            }
            if isPrime2(set) {
                counter += 1
            }
        }
    return counter
}

func isPrime2(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
let left = 10, right = 15

countPrimeSetBits(left, right)
1.trailingZeroBitCount
func countPrimeSetBits2(_ left: Int, _ right: Int) -> Int {
    var c = 0
    let primes: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19]
    for i in left...right{
        var x = i.nonzeroBitCount
        if(primes.contains(x)){c+=1}
    }
    return c
}
countPrimeSetBits2(59, 73)
