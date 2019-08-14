class Solution {

    func getnext(_ value : Int )-> Int{
        var n = value
        var sum = 0
        while (n > 0){
            var lastdig = n % 10
            sum += (lastdig * lastdig)
            n /= 10
        }
        return sum
    }

    func isHappy(_ n: Int) -> Bool {
        var v = n
        var cnt = 6
        while (cnt > 0){
            cnt -= 1
            var nextv = getnext (v)
            if (nextv == 1){
                return true
            }
            v = nextv
        }
        return false
    }
}
