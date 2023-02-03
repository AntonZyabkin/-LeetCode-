


func firstPalindrome(_ words: [String]) -> String {
    words.first { $0 == String($0.reversed()) } ?? "" 
}
let test = ["abc","car","ada","racecar","cool"]

print(firstPalindrome(test))
