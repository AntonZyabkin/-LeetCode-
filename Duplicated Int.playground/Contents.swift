var array = [1,8,9,5,8,16,4,7,5,5,1] // naturals numbers are > 0
let N = array.count

print("Duplicates:")
for i in 0..<N {
    if array[abs(array[i])-1] >= 0 {
        array[abs(array[i])-1] = -array[abs(array[i])-1]
    } else {
        print(abs(array[i]))
    }
}
print(array)
