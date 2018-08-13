// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

import Cocoa

func reverseInt( _ number: Int ) -> Int{
    let reversedNumberStr = String( String( number ).reversed() ).replacingOccurrences(of: "-", with: "")
    guard let num = Int( reversedNumberStr )else{ return number; }
    let reversedNumber = num
    let sign = ( number > 0 ) ? 1 : -1

    return reversedNumber * sign
}

print( "reverseInt( 15 ) got \( reverseInt( 15 ) ) :::: expects 51 ::: \( ( reverseInt( 15 ) == 51 ) ? "PASS" : "FAIL" )" )
print( "reverseInt( 981 ) got \( reverseInt( 981 ) ) :::: expects 189 ::: \( ( reverseInt( 981 ) == 189 ) ? "PASS" : "FAIL" )" )
print( "reverseInt( 500 ) got \( reverseInt( 500 ) ) :::: expects 5 ::: \( ( reverseInt( 500 ) == 5 ) ? "PASS" : "FAIL" )" )
print( "reverseInt( -15 ) got \( reverseInt( -15 ) ) :::: expects -51 ::: \( ( reverseInt( -15 ) == -51 ) ? "PASS" : "FAIL" )" )
print( "reverseInt( -90 ) got \( reverseInt( -90 ) ) :::: expects -9 ::: \( ( reverseInt( -90 ) == -9 ) ? "PASS" : "FAIL" )" )

