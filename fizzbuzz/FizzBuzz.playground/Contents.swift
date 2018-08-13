// --- Directions
// Write a program that console logs the numbers
// from 1 to n. But for multiples of three print
// “fizz” instead of the number and for the multiples
// of five print “buzz”. For numbers which are multiples
// of both three and five print “fizzbuzz”.
// --- Example
//   fizzBuzz(5);
//   1
//   2
//   fizz
//   4
//   buzz

import Cocoa

func fizzBuzz( _ n: Int ){
    for i in 1...n{
        if i % 3 == 0{
            print( "fizz" )
        }else if i % 5 == 0{
            print( "buzz" )
        }else if i % 3 == 0 && i % 5 == 0{
            print( "fizzbuzz" )
        }else{
            print(i)
        }
    }
}

fizzBuzz(5)
