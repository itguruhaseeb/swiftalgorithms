import Cocoa
import Foundation

// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

//Solution 1 - Complexity O(1)
func solution( str: String ) -> Bool{
    return str == String( str.reversed() )
}

//Test
print( "Palindrome Test - \( solution(str: "abba") ? "PASS" : "FAIL" )" )
