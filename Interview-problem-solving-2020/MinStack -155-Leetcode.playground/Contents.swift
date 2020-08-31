import UIKit

class MinStack {
public:
    /* initialize your data structure here. /
    stack<int> Stack, minStack;
    MinStack() {
        while (!Stack.empty()) Stack.pop();
        while (!minStack.empty()) minStack.pop();
    }

    void push(int x) {
        Stack.push(x);
        if (minStack.empty()) {
            minStack.push(x);
        } else {
            if (minStack.top() > x) {
                minStack.push(x);
            } else {
                minStack.push(minStack.top());
            }
        }
    }

    void pop() {
        Stack.pop();
        minStack.pop();
    }

    int top() {
        return Stack.top();
    }

    int getMin() {
        return minStack.top();
    }
};

/**
 * Your MinStack object will be instantiated and called as such:
  MinStack obj = new MinStack();
 * obj->push(x);
 * obj->pop();
 * int param_3 = obj->top();
 * int param_4 = obj->getMin();
 */
