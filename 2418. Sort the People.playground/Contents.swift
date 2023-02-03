


func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    var dict = [Int: String]()
    var output = [String]()
    heights.enumerated().map { (index, element) in
        dict[element] = names[index]
    }
    heights.sorted(by: >).map {
        output.append(dict[$0]!)
    }
    return output
}

let names = ["Mary","John","Emma"], heights = [180,165,170]

print(sortPeople(names, heights))
