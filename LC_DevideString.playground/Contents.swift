
func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
    var array = [String]()
    var temp = String()
    for i in s {
        temp += String(i)
        if temp.count == k {
            array.append(temp)
            temp = ""
        }
    }
    if temp.count > 0 {
        for _ in 1...(k - temp.count) {
            temp += String(fill)
        }
        array.append(temp)

    }
    return array
}



let st = "21"
let ar = Array(st)



print(divideString(st, 3, "r"))
