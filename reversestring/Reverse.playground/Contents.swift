import Cocoa
import Foundation

/*
 Problem statement: Reverse a given string with a worst time and space complexity of O(1)
*/

////Solution 3 - Time and space complexity is O(1)
func solution( str: String ) -> String{
    return String( str.reversed() )
}

//Tests
print( "Reverse string test - \( ( "dcba" == solution(str: "abcd") ? "PASS" : "FAIL" ) )" )


//Solution 1 - Loop through each char in string and concatenate them in the reversed order.
//func solution( str: String ) -> String{
//    var reversed = ""
//
//    for char in str{
//        reversed = String( char ) + reversed
//    }
//
//    return reversed
//}

//Solution 2 - Loop through each char in string array using array helper - reduce. This method runs on each element on the array
//func solution( str: String ) -> String{
//    return str.reduce("", {(rev,char) in
//        return String(char) + rev
//    })
//}
