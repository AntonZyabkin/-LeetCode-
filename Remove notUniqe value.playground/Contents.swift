let array = [1, 2, 3, 2, 2, 2, 1, 1, 2, 2, 5, 5, 5, 4]

print(array.enumerated().map { (n, v) in
    if $0 == $1 {
        array.remove(at: n)
    }
})
