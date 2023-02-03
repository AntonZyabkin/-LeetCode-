import Cocoa

func xorOperation(_ n: Int, _ start: Int) -> Int {
    var array: [Int] = []
    for i in 0..<n {
        array.append(start + 2 * i)
    }
    
    return array.reduce(0, ^)
}
func xorOperation2(_ n: Int, _ start: Int) -> Int {
    var output = 0
    for i in 0..<n {
        output = output ^ (start + 2 * i)
    }
    return output
}

let test1 = 4
let test2 = 3
xorOperation(test1, test2)
xorOperation(test1, test2)



test2^test1
