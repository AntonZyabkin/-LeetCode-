func deleteDuplicates(array: inout [Int]) {
    if array.count <= 1 {
        
    } else {
        var pointer = 1
        while pointer < array.count {
            if array[pointer - 1] == array[pointer] {
                array.remove(at: pointer)
            } else {
                pointer += 1
            }
        }
    }
}


var array: [Int] = []
deleteDuplicates(array: &array)
print(array)
