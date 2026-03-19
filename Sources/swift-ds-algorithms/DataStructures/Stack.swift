//
//  Stack.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 3/14/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

public class Stack<T> {
    private var stack: [T] = []
    
    public init() {}
    
    public func empty() -> Bool {
        return self.size() == 0
    }
    
    public func pop() -> T? {
        return self.stack.popLast()
    }
    
    public func push(value: T) {
        self.stack.append(value)
    }
    
    public func size() -> Int {
        return self.stack.count
    }
}
