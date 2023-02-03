func restoreString(_ s: String, _ indices: [Int]) -> String {
    var finalStr = ""
    let strArray = Array(s)
    var dict = [Int: Character]()
    for (n, value) in indices.enumerated() {
        dict[value] = strArray[n]
    }
    for i in 0..<indices.count {
        finalStr += String(dict[i]!)
    }
    return finalStr
}


let s = "codeleet"
let num = [4,5,6,7,0,2,1,3]
restoreString(s, num)
