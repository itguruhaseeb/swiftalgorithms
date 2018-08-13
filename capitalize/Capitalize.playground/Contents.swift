// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

import Cocoa

//Solution 1
//Algorithmic Complexity - O(n)
//Approach:
//Loop through the characters in the string. From the current index of the retrieved character. Look towards its left fetch that character. Convert characters to string and do a string comparision for " ". If there are no empty spaces on the left add the character to the variable capitalized. If there is a empty space right before the current character then transform it to uppercase by string helper method uppercased() and that back to the capitalized variable.
//func capitalize( _ str: String ) -> String{
//
//    if str.count == 0 {  return str }
//    var capitalized = ""
//
//    if let firstChar = str.first{
//        capitalized = String( firstChar ).uppercased()
//    }
//
//    for i in 1..<str.count{
//        let currentIndex  = str.index(str.startIndex, offsetBy: i)
//        let previousIndex = str.index(str.startIndex, offsetBy: i-1)
//
//        let currentChar = str[currentIndex]
//        let prevChar    = str[previousIndex]
//
//        if prevChar == " "{
//            capitalized = capitalized + String( currentChar ).uppercased()
//        }else{
//            capitalized = capitalized + String( currentChar )
//        }
//    }
//
//    print( capitalized )
//    return capitalized
//}

//Solution 2
//Algorithmic Complexity - O(1)
//Approach:
//Use the string helper method to transform the string to capitalized string
func capitalize( _ str: String ) -> String{
    return str.capitalized
}



//Tests
print( "capitalize('a short sentence') expects \"A short sentence\" - \( ( capitalize("a short sentence") == "A Short Sentence" ) ? "PASS" : "FAIL" )" )
print( "capitalize('a lazy fox') expects \"A Lazy Fox\" - \( ( capitalize("a lazy fox") == "A Lazy Fox" ) ? "PASS" : "FAIL" )" )
print( "capitalize('look, it is working!') expects \"Look, It Is Working!\" - \( ( capitalize("look, it is working!") == "Look, It Is Working!" ) ? "PASS" : "FAIL" )" )

