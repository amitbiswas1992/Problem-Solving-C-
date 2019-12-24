import UIKit

import Foundation

func isPalindrome(_ x: Int) -> Bool {
	return String(x) == String(String(x).reversed())
}
 

print(isPalindrome(124))


