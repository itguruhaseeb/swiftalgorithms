import Cocoa

func addOne( numbers:[Int] ) -> [Int]{
    var result = [Int]()
    var carry  = 1

    for i in stride(from: numbers.count, to: 0, by: -1){
        let index  = numbers.index(i, offsetBy: -1)
        let number = numbers[index]
        let sum    = number + carry

        carry      = ( sum > 9 ) ? 1 : 0
        let res    = ( sum % 10 == 0 ) ? 0 : sum

        result.insert(res, at: 0)
    }

    if carry == 1{
        result.insert(carry, at: 0)
    }

    return result
}

addOne(numbers: [9,9,9,9])
addOne(numbers: [1,1,1,1])
addOne(numbers: [1,2,3,4,5])
addOne(numbers: [1,9,9])
