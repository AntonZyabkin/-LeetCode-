func squareIsWhite(_ coordinates: String) -> Bool {
    let coord = Array(coordinates)
    if "aceg".contains(coord.first!) {
        return (Int(String(coord[1]))! % 2) == 0 ? true : false
    } else {
        return (Int(String(coord[1]))! % 2) != 0 ? true : false
    }
}


let coord = "a2"

squareIsWhite(coord)
