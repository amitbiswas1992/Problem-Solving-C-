import UIKit

// Split Array
//
//func mergeSort(_ array: [Int]) -> [Int] {
//
//    guard array.count > 1 else {
//        return array
//    }
//
//    var leftArray = Array(array[0..<array.count / 2])
//    var rightArray = Array(array[array.count/2..<array.count])
//
//
//    return merge(left: mergeSort(leftArray), right: mergeSort(rightArray))
//}
//
//// Merge Array
//
//func merge(left: [Int], right: [Int]) -> [Int] {
//
//    var mergeArray: [Int] = []
//
//    var left = left
//    var right = right
//
//    while left.count > 0 &&  right.count > 0 {
//        if left.first! < right.first! {
//            mergeArray.append(left.removeFirst())
//        } else {
//            mergeArray.append(right.removeFirst())
//        }
//    }
//
//    return mergeArray + left + right
//
//}
//
//var number =  [834, 188, 136, 974, 344, 672, 749, 702, 848, 880, 611, 356, 13, 852, 265, 383, 520, 296, 605, 45]
//
////for _ in 0..<20 {
////    let randomInt = Int(arc4random_uniform(UInt32(1000)))
////    number.append(randomInt)
////}
////print(number)
//
//print(mergeSort(number))
//
//




// Split Array

func mergeSort(arra: [Int]) -> [Int]{
  
  guard arra.count > 1 else {
    return arra
  }
  
  var leftArray = Array(arra[0..<arra.count/2])
  var rightArray = Array(arra[arra.count/2..<arra.count])
  
  return merge(left:  mergeSort(arra: leftArray) , right:  mergeSort(arra: rightArray ))
}

// Merge Array

func merge(left: [Int], right: [Int]) -> [Int] {
  
  var mergeArray: [Int] = []
  
  var left = left
  var right = right
  
  while left.count > 0 && right.count > 0 {
    if left.first! > right.first! {
      mergeArray.append(left.removeFirst())
    } else {
      mergeArray.append(right.removeFirst())
    }
    
  }
  
  return mergeArray + left + right
  
  
}

let num = [12,5,47,30,69,25,20,11,73]

mergeSort(arra: num)


