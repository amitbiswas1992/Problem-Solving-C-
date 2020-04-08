public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }

let nodeOne = ListNode(<#T##val: Int##Int#>)
 
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var head = head
        var mid = head
        var flag = true
        while head != nil {
            if flag == true {
                mid = mid?.next
            }
            head = head?.next
            if flag {
                flag = false
            }
            else{
                flag = true
            }
        }
        return mid
    }
}
