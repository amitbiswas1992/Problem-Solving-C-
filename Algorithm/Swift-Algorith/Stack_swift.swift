import UIKit

// Merge Sortfunc

struct  MinStack{

    var num : [String] = []


 mutating    func peek()->String {

    guard let topElement = num.first  else { fatalError("Error")}
        return topElement
    }



   mutating  func pop()-> String {
       return num.removeFirst()


    }

 mutating   func push (_ element : String ){
     num.insert(element, at: 0)


    }

}

var nameStack = MinStack()

print (nameStack.push("Amit"))
nameStack.pop()

print (nameStack.push("Amit"))

print (nameStack.push("Jacok"))
print(nameStack)
