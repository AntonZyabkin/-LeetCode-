var count = 0
func countOperations(_ num1: Int, _ num2: Int) -> Int {
    var n1 = num1
    var n2 = num2
    func zeroing(_ num1: Int, _ num2: Int) {
        if n1 != 0 && n2 != 0 {
            n1 >= n2 ? (n1 -= n2) : (n2 -= n1)
            count += 1
            zeroing(n1, n2)
        }
    }
    zeroing(n1, n2)
    return count
}


let num1 = 2, num2 = 3
countOperations(num1, num2)
