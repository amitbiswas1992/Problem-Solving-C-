import UIKit


var numbers:[Int] = [ 3,4,1,8,10,23,44,76,33, 7, 9, 1, 10]

func bubbleSort(array: inout [Int])->[Int] {


    for c in 0..<array.count{
        for i in 0..<array.count - 1{
                if array[i] > array[i+1]{
                    array.swapAt(i + 1, i)
                }
        }
    }
     return array
}

print(bubbleSort(array: &numbers))
