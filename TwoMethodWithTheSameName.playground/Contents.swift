import Cocoa

var greeting = "Hello, playground"

protocol Method1 {
    func PrintTest()
}
extension Method1 {
    func PrintTest() {
        print("success1")
    }
}
class Test: Method1 {
    var name = "Anatan"
    var lastName : String
    init(name: String) {
        self.lastName = name
    }
}

class Child: Test {}
let test = Test(name: "noname")

var child = Child(name: "Child")
child.PrintTest()

String(2, radix: 2)


func isPrime2(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
