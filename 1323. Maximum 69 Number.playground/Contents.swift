import Cocoa

var greeting = "Hello, playground"

func maximum69Number (_ num: Int) -> Int {
    var array = Array(String(num))
    for (n, value) in array.enumerated() {
        if Int(String(value))! == 6 {
            array[n] = "9"
            return Int(String(array))!
        }
    }
    return num
}

let num = 99696

maximum69Number(num)
