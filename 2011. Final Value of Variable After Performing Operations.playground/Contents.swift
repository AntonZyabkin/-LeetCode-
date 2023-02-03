func finalValueAfterOperations(_ operations: [String]) -> Int {
    var ans = 0
    operations.map { i in
        switch i {
        case "--X", "X--":
            ans -= 1
        default:
            ans += 1
        }
    }
    return ans
}


let test = ["--X","X++","X++"]
print(finalValueAfterOperations(test))
