import UIKit

    func isValid(_ s: String) -> Bool {
        var stack = [Character]();

        for bracket in s {
            if bracket == "(" {
                stack.append(")");
            } else if bracket == "[" {
                stack.append("]");
            } else if bracket == "{" {
                stack.append("}");
            } else {
                if stack.isEmpty || stack.last != bracket {
                    return false;
                }
                stack.removeLast()
            }
        }
        return stack.isEmpty
    }
