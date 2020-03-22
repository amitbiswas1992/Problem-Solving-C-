import UIKit

func BFSTraverse() -> () {

    //establish a queue
    let bsQueue = Queue<BSNode<T>>()

    //queue a starting node
    bsQueue.enQueue(self)

    while !bsQueue.isEmpty() {

        //traverse the next queued node
        guard let bitem = bsQueue.deQueue() else {
            break
        }

        print("now traversing item: \(bitem.key!)")

        //add descendants to the queue
        if let left = bitem.left {
            bsQueue.enQueue(left)
        }

        if let right = bitem.right {
            bsQueue.enQueue(right)
        }
    } //end while

    print("bfs traversal complete..")

}


 quicksort function
func quickSort(array:[Int],start:Int,end:Int) -> [Int]{
  var a = array
// baseCondition :- check if start index is less than end index
  guard start < end else{return a}

  let pivot = a[end] // find the pivot
  var startIndex = start // put start index

  for i in start...(end - 1){
// check if value is less or equal to pivot
    if a[i] <= pivot{
      // swap the values
       a = quickSwap(array:a, index1: i, index2: startIndex)
       startIndex += 1
     }
  }
  // swap the value of pivot
  a = swap(array:a ,index1: startIndex, index2: end)

  // run recursive call for array divided into two parts from pivot    point
  a = quickSort(array: a, start: start, end: startIndex - 1)
  a = quickSort(array: a, start: startIndex+1, end: end)
  return a
}







