import UIKit

// Split the array

//func mergeSort(array:[Int] )-> [Int] {
//    // checking array has more than 1 numbers
//
//    guard array.count > 1 else {
//    return array
//    }
//    // creating two new array
//    let leftArray = Array(array[0..<array.count/2])
//    let rightArray = Array(array[array.count/2..<array.count ])
//
//  return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
//}
//
////Merge
//
//func merge(left: [Int], right:[Int])-> [Int]{
//
//    var mergeArray: [Int] = []
//    var left = left
//    var right = right
//
//    while left.count > 0 && right.count > 0 {
//
//        if left.first! < right.first! {
//
//            mergeArray.append(left.removeFirst())
//        }else {
//
//            mergeArray.append(right.removeFirst())
//        }
//
//
//
//    }
//
//
// return mergeArray + left + right
//}
//
//var numbers:[Int] = []
//
//for _ in 0..<50 {
//    let randomInt = Int(arc4random_uniform(UInt32(1000)))
//    numbers.append(randomInt)
//}
//print(numbers)
//
//print(mergeSort(array: numbers))



