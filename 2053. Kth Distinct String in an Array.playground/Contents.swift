func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var u = [String]()
    arr.map {
        let c = $0
        if arr.filter({ $0 == c }).count == 1 {
            u.append(c)
        }
    }
    if u.count >= k {
        return u[k-1]
    } else {
        return ""
    }
}

let arr = ["d","b","c","b","c","a"], k = 2

print(kthDistinct(arr, 2))

