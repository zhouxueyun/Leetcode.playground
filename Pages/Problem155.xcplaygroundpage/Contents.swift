
import Foundation

/**
 Min Stack
 
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
 
 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
 */

class MinStack {
    
    /** initialize your data structure here. */
    var mins: [Int]
    var values: [Int]
    
    init() {
        mins = [Int]()
        values = [Int]()
    }
    
    func push(_ x: Int) {
        values.append(x)
        if x <= getMin() { mins.append(x) }
    }
    
    func pop() {
        if let val = values.popLast(), val == getMin() {
            mins.popLast()
        }
    }
    
    func top() -> Int {
        return values.last ?? Int.min
    }
    
    func getMin() -> Int {
        return mins.last ?? Int.max
    }
}

let minStack = MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();  // --> Returns -3.
minStack.pop();
minStack.top();     // --> Returns 0.
minStack.getMin();  // --> Returns -2.
