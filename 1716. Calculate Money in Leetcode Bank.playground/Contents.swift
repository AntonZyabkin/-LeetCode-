import Cocoa

var greeting = "Hello, playground"

func totalMoney(_ n: Int) -> Int {
    var counter = 0
    (1...n).map {
        let test = $0 - 7 * (Int(($0 - 1) / 7))
        let test2 = Int(($0 - 1) / 7)
        counter += ((test) + (test2))
    }
    return counter
}
print(totalMoney(10))
