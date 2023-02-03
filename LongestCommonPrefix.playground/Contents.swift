func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.isEmpty { return ""}
    var str = strs[0]
    
    for i in strs {
        while !i.hasPrefix(str) {
            str.dropLast()
        }
    }
    return str
}

let array = ["dog1","dog2","dog3"]


print(longestCommonPrefix(array))

let test = "aascascascasca"
test.hasPrefix("aas")

