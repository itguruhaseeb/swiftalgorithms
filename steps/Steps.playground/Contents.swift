// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'
import Cocoa

//Solution 1
//Algorithmic Complexity : O(n2)
//func steps( _ numberOfSteps: Int ){
//
//    var steps = ""
//    for row in 0..<numberOfSteps{
//
//        steps = "#"
//        for column in 0..<numberOfSteps{
//            if column < row{
//                steps += "#"
//            }else{
//                steps += ""
//            }
//        }
//        print( steps )
//    }
//
//}

//Solution 2
func steps( _ numberOfSteps: Int, _ row: Int = 0, _ stair: String = "" ){
    if row == numberOfSteps{
        return
    }

    var str = stair

    if str.count > row{
        print( str )
        return steps(numberOfSteps, row + 1, stair)
    }

    if str.count <= row{
        str += "#"
    }else{
        str += ""
    }

    steps(numberOfSteps, row, str)
}

//Tests
steps(5)
