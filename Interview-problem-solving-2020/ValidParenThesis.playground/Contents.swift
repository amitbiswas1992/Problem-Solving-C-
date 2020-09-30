import UIKit

//func validParenthesis(_ s: String ) -> Bool {
//
//    var stack: [Character] = []
//
//    for i in s {
//
//        if i == "(" {
//            stack.append(")")
//        }
//       else  if i == "{" {
//            stack.append("]")
//        }
//       else  if i == "[" {
//            stack.append("]")
//        }
//        else {
//            if stack.isEmpty || stack.last != i {
//               return false
//            }
//             stack.removeLast()
//        }
//
//
//
//    }
//    return stack.isEmpty
//}




func fibonacci(numOfStep: Int, first: Int , second: Int ) -> [Int] {
   
  if numOfStep == 0 {
        return []
    }
    
    return [first + second ] + fibonacci(numOfStep: numOfStep - 1 , first: second , second: first + second )
    
}
var l = fibonacci(numOfStep: 5, first: 0, second: 1)
print(l)



func fibonacciRecursiveNum1(num1: Int, num2: Int, steps: Int) {

    if steps > 0 {
        let newNum = num1 + num2
        fibonacciRecursiveNum1(num1: num2, num2: newNum, steps: steps - 1 )
    }
    else {
        print("result = \(num2)")
    }
}
fibonacciRecursiveNum1(num1:0, num2: 1, steps: 5)


//func fibonnaciN (_ num: Int ) -> Int {
//
//    if num == 0 {
//        return 0
//    }
//
//    if num == 1 {
//        return 1
//    }
//
//    var N1 = 1
//    var N2 = 0
//
//    for i in 0..<num {
//
//        var temp = N1
//        N1 = N1 + N2
//        N2 = temp
//
//    }
//
//    return N1
//}
//
//fibonnaciN(5)



