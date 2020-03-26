import UIKit

public struct Queue<T> {
var array = [T]()

  var isEmpty: Bool {
    return array.isEmpty
  }
  
  var count: Int {
    return array.count
  }

   mutating func enqueue(_ element: T) {
    array.append(element)
  }
  
  mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  var front: T? {
    return array.first
  }
}

// Reversed a string


func reverseString(s: String) -> String {
    var x = 0
    var y = s.count
    while x < y {
       swap(s[x += 1], s[y -= 1])
    }
    return s
}

reverseString(s: "amit")

//int x = 0;
//int y = s.length();
//while(x < y)
//    swap(s[x++],s[y--]);
