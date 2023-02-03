

let n = 234567
let array = String(n)
    .compactMap(\.wholeNumberValue)
array.reduce(1, *) - array.reduce(0, +)
