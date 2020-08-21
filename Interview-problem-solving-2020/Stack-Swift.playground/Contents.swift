import UIKit

struct StringStack {
    
    
    var stack: [String] = []
    
    mutating   func peek() -> String {
        guard let topElement = stack.first else { fatalError("error")}
        
        return topElement
    
    }
    
    mutating  func pop () -> String {
        
    return stack.removeFirst()
    }
    mutating  func push (_ element: String ) {
       
        stack.insert(element, at: 0)
    
    }
    
}


var nameStack = StringStack()

nameStack.push("Amit")
nameStack.pop()

nameStack.push("AmitBiswas")
nameStack.peek()
