func truncateSentence(_ s: String, _ k: Int) -> String {
    let sSrray = s.split(separator: " ")
    return sSrray[0...k].joined(separator: " ")
}

let s = "Hello how are you Contestant"



print(truncateSentence(s, 2))
