import Cocoa

var greeting = "Hello, playground"

func createSubarrays(_ array: [Int]) -> [[Int]] {
    var subarrays:[[Int]] = [[]]
    for i in array {
        for sub in subarrays {
            subarrays.append(sub + [i])
        }
    }
    subarrays.sort { a, b in
        a.count < b.count
    }
    subarrays.remove(at: 0)
    return subarrays
}

let array = [1, 2, 5]
print(createSubarrays(array))
