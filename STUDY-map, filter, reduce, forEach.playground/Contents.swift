import Cocoa

var greeting = "Hello, playground"
var forEachArray = [1, 2, 3, 4, 5, 6]
//MARK USE .forEach
forEachArray.forEach { current in
//    print(current)
}

var test1 = 0
forEachArray.forEach { test1 += $0 }

(1..<10).forEach{ print($0) }

forEachArray.enumerated().forEach { print($0, $1)}


//MARK USE .map
forEachArray.map { print(Int(pow(Double($0), 5)))}


let stringArray = ["Tem", "Steve", "Bill", "Michael", "1", "5"]

stringArray.map { $0.lowercased()}

let newIntArray = stringArray.map { Int($0) }
print(newIntArray)

//MARK USE .compactMap
let newIntArray2 = stringArray.compactMap { Int($0) }
print(newIntArray2)


//MARK USE .flatMap
let multyArray = [[1], [2, 2], [3, 3, 3]]
let onearray = multyArray.flatMap { $0 }
print(onearray)
print(stringArray.flatMap { $0.map{ String($0) + "2" }})

let optionalString: String? = "21211"
let notoptionalInt = optionalString.flatMap { Int($0) }
print(notoptionalInt)


//MARK USE .filter
var filterArray = [1, 2, 3, 4, 5, 6]

// в замыкании должно определеяться bool значение
print(filterArray.filter { $0 % 2 == 0 })


//MARK USE .redice
var rediceArray = [1, 2, 3, 4, 5, 6]
print(rediceArray.reduce(0, +))
print(stringArray.reduce("", + ))

rediceArray.reduce("") { partialResult, num in
    partialResult + String(num)
}

