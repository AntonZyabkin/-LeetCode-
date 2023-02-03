func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    let dict = ["type": 0, "color": 1, "name": 2]
    return items.filter { $0[dict[ruleKey]!] == ruleValue }.count
}

let items = [["phone","silver","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]]
let ruleKey = "color"
let ruleValue = "silver"

print(countMatches(items, ruleKey, ruleValue))
