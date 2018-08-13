// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]
import Cocoa


//Solution 1
//func chunk( _ numbers:[Int], _ size: Int ) -> Array<Any>{
//    var chunks = [Array<Int>]()
//
//
//    for elem in numbers{
//
//        let index = chunks.endIndex - 1
//        if chunks.count > 0,
//           chunks[index].last != elem && chunks[index].count < size{
//                chunks[index].append(elem)
//        }else{
//                chunks.append( [elem] )
//        }
//
//    }
//
//    return chunks
//}

//Solution 2
func chunk( _ numbers:[Int], _ size: Int ) -> Array<Any>{
    var chunks = [Array<Int>]()
    var start = 0
    var end   = size

    if size > numbers.count{
        return [numbers]
    }

    while start < numbers.count {

        let segment = Array( numbers[start..<end] )
        chunks.append(segment)
        start = end

        end = ( end + size > numbers.count ) ? numbers.count : end + size
    }

    return chunks
}

//Tests
 print( chunk([1, 2, 3, 4], 2) )
 print( chunk([1, 2, 3, 4, 5], 2) )
 print( chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) )
 print( chunk([1, 2, 3, 4, 5], 4) )
 print( chunk([1, 2, 3, 4, 5], 10) )
