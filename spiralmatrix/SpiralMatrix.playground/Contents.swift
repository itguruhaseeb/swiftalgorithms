import Cocoa

func spiralMatrix( _ n: Int ){

    // Init an all-zero matrix
    var matrix = Array(0..<n).map { _ in [Int](repeating: 0, count: n) }

    var i = 0
    var j = 0

    // These 2 variables control how we move the i and j cursors
    // Initial move is from left to right
    var deltaI = 0
    var deltaJ = 1

    for number in 1...(n*n) {
        matrix[i][j] = number

        let nextI = i + deltaI
        let nextJ = j + deltaJ

        //print( "Row ::: \(nextI) ::: Column :::: \(nextJ) :::: number ::::: \(number)" )

        // nextCellIsEmpty == true if:
        //      * nextI is within boundary of the matrix; and
        //      * nextJ is within boundary of the matrix; and
        //      * matrix[nextI][nextJ] is not taken
        // ~= is the "pattern match" operator. a..<b ~= c returns true if a <= c < b
        let nextCellIsEmpty = (0..<n ~= nextI) && (0..<n ~= nextJ) && (matrix[nextI][nextJ] == 0)

        // If the next cell is not empty, we need to adjust how
        // the cursors move
        if !nextCellIsEmpty {
            if deltaJ == 1 { deltaI = 1; deltaJ = 0; }
            else if deltaI == 1 { deltaI = 0; deltaJ = -1; }
            else if deltaJ == -1 { deltaI = -1; deltaJ = 0; }
            else if deltaI == -1 { deltaI = 0; deltaJ = 1; }
        }

        i += deltaI
        j += deltaJ
    }

    matrix.forEach { print($0) }

}
