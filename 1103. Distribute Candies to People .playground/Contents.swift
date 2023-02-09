func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
    var array = Array.init(repeating: 0, count: num_people)
    var counter = 1
    var cand = candies
    
    while cand > 0 {
        (0..<num_people).map {
            array[$0] += min(cand, counter)
            cand -= counter
            counter += 1
        }
    }
    return array
}


print(distributeCandies(7, 4))
