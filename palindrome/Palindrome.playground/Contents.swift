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

//Solution 2 - Loop through the string characters and start comparing the first left to last right character. If there is no match found as doing comparison from n == n-1, n+1 == n-2, .....Mark the flag as not a palindrome and break the loop. The complexity with this solution O(n)
func solution( str: String ) -> Bool{
    var isPalinddrome = true
    var rightIndex = -1

    for i in 0..<str.count{
        let leftCharIndex  = str.index(str.startIndex, offsetBy: i)
        let rightCharIndex = str.index(str.endIndex, offsetBy: rightIndex)
        let leftChar  = String(str[leftCharIndex])
        let rightChar = String(str[rightCharIndex])

        if leftChar != rightChar{
            isPalinddrome = false
            break;
        }

        rightIndex = rightIndex + -1

    }

    return isPalinddrome
}


//Solution 1 - Complexity O(1)
//func solution( str: String ) -> Bool{
//    return str == String( str.reversed() )
//}

//Tests
print( "\"abba\" is a palindrome - \( solution(str: "abba") ? "PASS" : "FAIL" )" )
print( "\"madam\" is a palindrome - \( solution(str: "madam") ? "PASS" : "FAIL" )" )
print( "\"1100111\" is a palindrome - \( solution(str: "1100111") ? "PASS" : "FAIL" )" )
print( "\"1000001\" is a palindrome - \( solution(str: "1000001") ? "PASS" : "FAIL" )" )
print( "\"abcdefg\" is a palindrome - \( solution(str: "abcdefg") ? "PASS" : "FAIL" )" )
print( "\"abc \" is a palindrome - \( solution(str: " abc") ? "PASS" : "FAIL" )" )
print( "\"Fish hsif\" is a palindrome - \( solution(str: "Fish hsif") ? "PASS" : "FAIL" )" )
