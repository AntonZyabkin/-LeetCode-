func fizzBuzz(_ n: Int) -> [String] {
    var array: [String] = []
    for i in 1...n {
        switch i {
        case let i where (i % 3) == 0:
            array.append("Fizz")
        case let i where  i % 5 == 0:
            array.append("Buzz")
        case let i where (i % 3 == 0) && (i % 5 == 0):
            array.append("FizzBuzz")
        default:
            array.append(String(i))
        }
    }
    return array
}
print(fizzBuzz(100))
