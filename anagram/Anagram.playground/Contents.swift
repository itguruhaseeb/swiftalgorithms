// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

import Cocoa
import Foundation


//Solution 3
//Algorithmic Complexity is O(n^2)
//Approach:
//Cleanup strings by removing special characters, white spaces using regular expression. Also transform the string into lowercase string using String helper methods
//Check the character count of string 1 == string 2. If it doesnt match there is not an anagram. If it matches continue to the next step below
//Declare a integer variable called truthTableSum with a default value 0.
//Loop through string 1 and get the char from string1. Run a inner loop on string2 and compare the char from string1 to the char retrieved from inner loop. If there is a match found increase the truthTableSum by 1
// At the end of the loop compare the string 1 character count to truthTableSum if both are equal then its an anagram. If its not then its not an anagram.

func anagram( _ str: String, _ compareStr: String ) -> Bool{
    var isAnagram = true

    let pattern = "[^\\w+0-9]"
    let regex   = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    let cleanStr1 = regex?.stringByReplacingMatches(in: str, options: [], range: NSMakeRange(0, str.count), withTemplate: "").lowercased()
    let cleanStr2 = regex?.stringByReplacingMatches(in: compareStr, options: [], range: NSMakeRange(0, compareStr.count), withTemplate: "").lowercased()

    if let str1 = cleanStr1,
        let str2 = cleanStr2{

        if str1.count != str2.count{
            return false
        }

        var truthTableSum = 0
        for i in 0..<str1.count{
            let currentIndex = str1.index(str1.startIndex, offsetBy: i)
            let aChar     = String( str1[currentIndex] )
            var found     = 0

            for j in 0..<compareStr.count{
                let cmpCharIndex = compareStr.index(compareStr.startIndex, offsetBy: j)
                let bChar    = String( compareStr[cmpCharIndex] )

                if aChar == bChar{
                    found = 1
                    break
                }
            }

            truthTableSum = truthTableSum + found

        }

        isAnagram = ( str1.count == truthTableSum ) ? true : false

    }

    return isAnagram
}

//Solution 2
//Algorithmic Complexity is O(n+n) = O(2n) can also be written as O(n)
//Approach:
//Cleanup strings by removing special characters, white spaces using regular expression. Also transform the string into lowercase string using String helper methods
//Check the character count of string 1 == string 2. If it doesnt match there is not an anagram. If it matches continue to the next step below
//Declare a dictionary to hold the character map. The character map will be as follows. Character as key and number of time present in the string as values
//Loop through string 1 and get the char from string1. Check the character map dictionary for any possible keys. If it exists increment the value for the key by 1. If not insert the key-value object. Do the same for string 2 in the same loop
// Start a new for loop right after the previous loop. Check the key from character map 1 exists in character map2 and compare character map 1 value from its current key to character map 2 value. If both matches continue the loop. If there is either a key not found or the value doesnt match. Mark its not an anagram and break the loop.

//func anagram( _ str: String, _ compareStr: String ) -> Bool{
//    var isAnagram = true
//    var strCharMap = [String:Int]()
//    var compareStrCharMap = [String:Int]()
//
//    var pattern = "[^\\w+0-9]"
//    var regex   = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
//    var cleanStr1 = regex?.stringByReplacingMatches(in: str, options: [], range: NSMakeRange(0, str.count), withTemplate: "")
//    var cleanStr2 = regex?.stringByReplacingMatches(in: compareStr, options: [], range: NSMakeRange(0, compareStr.count), withTemplate: "")
//
//    if let str1 = cleanStr1,
//        let str2 = cleanStr2{
//
//        if str1.count != str2.count{
//            return false
//        }
//
//        for i in 0..<str1.count{
//            let index = str.index(str1.startIndex, offsetBy: i)
//            let strChar = String( str1[index] ).lowercased()
//            let cmpStrChar = String( str2[index] ).lowercased()
//
//            if let aChar = strCharMap[strChar]{
//                strCharMap[strChar] = Int( strCharMap[strChar]! ) + 1
//            }else{
//                strCharMap[strChar] = 1
//            }
//
//            if let bChar = compareStrCharMap[cmpStrChar]{
//                compareStrCharMap[cmpStrChar] = Int( compareStrCharMap[cmpStrChar]! ) + 1
//            }else{
//                compareStrCharMap[cmpStrChar] = 1
//            }
//        }
//
//
//        for sourceObj in strCharMap{
//            if let cmpValue = compareStrCharMap[sourceObj.key],
//                cmpValue == sourceObj.value{
//                continue
//            }else{
//                isAnagram = false
//                break
//            }
//        }
//
//
//    }
//
//    return isAnagram
//}


//Solution 1
//Algorithmic Complexity is O(nlogN). This is O(nlogN) because we will be sorting the string using the String helper method for sorting.
//Approach:
//Cleanup strings by removing special characters, white spaces using regular expression. Also transform the string into lowercase string using String helper methods
//Check the character count of string 1 == string 2. If it doesnt match there is not an anagram. If it matches continue to the next step below
//Sort the 2 strings and do string comparison. If both are equal its an anagram
//func anagram( _ str: String, _ compareStr: String ) -> Bool{
//    return cleanString( str ) == cleanString( compareStr )
//}
//
//func cleanString( _ str: String ) -> String{
//    let pattern  = "[^\\w+0-9]"
//    let regex    = try? NSRegularExpression(pattern: pattern, options: .caseInsensitive)
//    let matches  = regex!.matches(in: str, options: [], range: NSMakeRange(0, str.count))
//    var cleanStr = str
//    if matches.count > 0{
//        matches.compactMap { (match) in
//            let specialChar = (str as NSString).substring(with: match.range)
//            cleanStr = cleanStr.replacingOccurrences(of: specialChar, with: "")
//        }
//    }
//
//    return String( cleanStr.replacingOccurrences(of: " ", with: "").lowercased().sorted() )
//}

print( "anagram( \"rail safety\", \"fairy tales\" ) is an anagram \( anagram( "rail safety", "fairy tales" ) ? "PASS" : "FAIL" )" )
print( "anagram( \"RAIL! SAFETY!\", \"fairy tales\" ) is an anagram \( anagram( "RAIL! SAFETY!", "fairy tales" ) ? "PASS" : "FAIL" )" )
print( "anagram( \"Hi there\", \"Bye there\" ) is not an anagram \( anagram( "Hi there", "Bye there" ) ? "PASS" : "FAIL" )" )
