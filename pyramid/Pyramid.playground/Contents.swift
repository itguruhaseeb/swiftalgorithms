// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '
//       '###'
//   pyramid(3)
//       '  #  '
//       ' ### '
//       '#####'
import Cocoa

//Solution 1 - Using loops
//func pyramid( _ n: Int ){
//    let midPoint = Int( ceil( Double(( 2 * n - 1 ) / 2) ) )
//
//    for row in 0..<n{
//        var str = ""
//
//        for column in 0..<2 * n - 1{
//
//            if midPoint - row <= column && midPoint + row >= column{
//                str += "^"
//            }else{
//                str += " "
//            }
//        }
//        print( str )
//    }
//}

//Solution 2 - Using recursion
func pyramid( _ n: Int, _ row: Int = 0, _ level: String = "" ){
    if n == row{
        return;
    }

    let columns  = 2 * n - 1;
    let midpoint = Int( ceil( Double(columns / 2) ) )

    if columns == level.count{
        print( level )
        return pyramid( n, row + 1, "" )
    }

    var str = level
    if midpoint - row <= level.count && midpoint + row >= level.count{
        str += "#"
    }else{
        str += " "
    }

    pyramid( n, row, str )
}

//Test
pyramid(5)
