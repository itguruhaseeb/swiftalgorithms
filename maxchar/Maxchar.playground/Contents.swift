// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"
import Cocoa

func maxChar( _ str: String ) -> String{

    var charMap = [String:Int]()

    for char in str{
        let key = String( char )
        charMap[key] = ( charMap[key] == nil ) ? 1 : charMap[key]! + 1
    }

    let charObj = charMap.max{ a, b in a.value < b.value }
    return charObj?.key ?? ""
}

print( "maxChar(\"abcccccccd\") expects \"c\" got \( maxChar("abcccccccd") )    -- \( ( maxChar("abcccccccd") == "c" ) ? "PASS" : "FAIL" )" )

print( "maxChar(\"apple 1231111\") expects \"1\" got \( maxChar("apple 1231111") ) -- \( ( maxChar("apple 1231111") == "1" ) ? "PASS" : "FAIL" )" )

print( "maxChar(\"Hello world\") expects \"l\" got \( maxChar("Hello world") )   -- \( ( maxChar("Hello world") == "l" ) ? "PASS" : "FAIL" )" )

print( "maxChar(\"John Smith\") expects \"h\" got \( maxChar("John Smith") )   -- \( ( maxChar("John Smith") == "h" ) ? "PASS" : "FAIL" )" )


////Solution 2
//func maxChar( _ str: String ) -> String{
//
//    var charMap = [String:Int]()
//
//    for char in str{
//        let key = String( char )
//        charMap[key] = ( charMap[key] == nil ) ? 1 : charMap[key]! + 1
//    }
//
//    var max = 0
//    var maxChar = ""
//    for obj in charMap{
//        let val = charMap[obj.key]
//        if val! > max{
//            max      = obj.value
//            maxChar  = obj.key
//        }
//    }
//
//    return maxChar
//}
