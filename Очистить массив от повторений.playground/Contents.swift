import Foundation

func removeDuplicate( array: inout [Int]) -> [Int] {
    
    var index = 1
    while index < array.count {
        if array[index] == array[index - 1] {
            array.remove(at: index)
        } else {
            index += 1
        }
    }
    
    return array
}

var array1 = [1, 1, 2, 3, 4, 5, 5, 5, 5, 5, 5, 78]

print(removeDuplicate(array: &array1))
