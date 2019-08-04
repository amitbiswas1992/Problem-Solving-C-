class MinStack {

    struct Entity {
        let val: Int
        let min: Int
    }

    var stack: [Entity]

    /** initialize your data structure here. */
    init() {
        stack = [Entity]()
    }

    func push(_ x: Int) {
        let min = getMin()
        if min < x {
            let e = Entity(val: x, min: min)
            stack.append(e)
        } else {
            let e = Entity(val: x, min: x)
            stack.append(e)
        }
    }

    func pop() {
        if let _ = stack.last {
            stack.removeLast()
        }
    }

    func top() -> Int {
        if let e = stack.last {
            return e.val
        }
        return 0
    }

    func getMin() -> Int {
        if let e = stack.last {
            return e.min
        }
        return Int.max
    }
}
