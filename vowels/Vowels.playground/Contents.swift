// --- Directions
// Write a function that returns the number of vowels
// used in a string.  Vowels are the characters 'a', 'e'
// 'i', 'o', and 'u'.
// --- Examples
//   vowels('Hi There!') --> 3
//   vowels('Why do you ask?') --> 4
//   vowels('Why?') --> 0

import Cocoa

//Solution 2
func vowels( _ str: String ) -> Int{
    let pattern = "[aeiou]"
    let regex   = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    let matches = regex?.matches(in: str, options: [], range: NSMakeRange(0, str.count))

    return matches!.count
}


////Solution 1
//func vowels( _ str: String ) -> Int{
//    var numOfVowels = 0
//    let vowels = "aeiou"
//
//    for char in str{
//        for vowel in vowels{
//            if char == vowel{
//                numOfVowels += 1
//            }
//        }
//    }
//
//    return numOfVowels
//}

//Tests
print( "vowels('Hi There!') expects 3 - \( ( vowels("Hi There!") == 3 ) ? "PASS" : "FAIL" )" )
print( "vowels('Why do you ask?') expects 4 - \( ( vowels("Why do you ask?") == 4 ) ? "PASS" : "FAIL" )" )
print( "vowels('Why?') expects 0 - \( ( vowels("Why?") == 0 ) ? "PASS" : "FAIL" )" )
