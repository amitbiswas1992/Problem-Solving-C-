//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,4,5,6,7,8,11,13,17,20,25]


func binarySearch(Searchvalue: Int , array: [Int])-> Bool {

    var leftIndex = 0
    var rightIndex = array.count - 1

    while leftIndex <= rightIndex {
        let middleIndex  = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]

        if middleValue == Searchvalue {
            return true
        }
    }

    return false
}

binarySearch(Searchvalue: 11, array: numbers)



//func linearSearch(searchItem: Int , array: [Int])->Bool{
//    for num in array{
//        if num == searchItem{
//            return true
//        }
//    }
//
//    return false
//}
//
//
//var res = linearSearch(searchItem: 2, array: numbers)
//print(res)



//func linearSearch(searchValue : Int , arr: [Int])-> Bool{
//    for num in arr{
//        if num == searchValue{
//            return true
//        }
//    }
//
//    return false
//
//}
//
//

//
//print(linearSearch(searchValue: 40, arr: numbers))
//
