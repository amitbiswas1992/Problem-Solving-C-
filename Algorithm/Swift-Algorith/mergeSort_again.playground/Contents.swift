import UIKit

// Split the array
let numbers = [20, 11, 100,9,36,58,12,7,700,19,25,22,13,600]
func mergeSort(array: [Int])-> [Int] {

    guard array.count > 1 else {
        return array
    }

    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])

    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

//Merge the array
func merge(left: [Int], right: [Int])-> [Int] {
    var newArray: [Int] = []
    var left = left
    var right = right

    while left.count > 0 && right.count > 0  {

        if left.first! < right.first! {
            newArray.append(left.removeFirst())
        }else {
            newArray.append(right.removeFirst())
        }
    }

    return left + right + newArray
}

//var numbers: [Int] = []
//
//for _ in 0..<20 {
//    let random = Int(arc4random_uniform(UInt32(1000)))
//    numbers.append(random)
//}
//print(numbers)
print(mergeSort(array: numbers))



