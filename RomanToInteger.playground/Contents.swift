func romanToInt(_ s: String) -> Int {
    let array = Array(s)
    var result = 0
    var dict = ["IV": -1, "IX": -1, "XL": -10, "XC": -10, "CD": -100, "CM": -100]
    
    for (n, value) in array.enumerated(){
        
        switch value {
        case "I":
            if n < (array.count - 1) {
                let maybe = String(value) + String(array[n + 1])
                result += dict[maybe] ?? 1
            } else {
                result += 1
            }
        case "V":
            result += 5
        case "X":
            if n < (array.count - 1) {
                let maybe = String(value) + String(array[n + 1])
                result += dict[maybe] ?? 10
            } else {
                result += 10
            }
        case "L":
            result += 50
        case "C":
            if n < (array.count - 1) {
                let maybe = String(value) + String(array[n + 1])
                result += dict[maybe] ?? 100
            } else {
                result += 100
            }
        case "D":
            result += 500
        case "M":
            result += 1000
        default:
            continue
        }
    }
    return result
}

let roman = "LVIII"
print(romanToInt(roman))
