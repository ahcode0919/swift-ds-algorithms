//
//  Queue.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/20/26.
//

public class Queue<T> {

    public private(set) var count: Int = 0

    public init() { }

    private var list: DoublyLinkedList<T> = DoublyLinkedList<T>()

    public func enqueue(_ value: T) {
        count += 1
        list.appendLeft(value)
    }

    @discardableResult
    public func deque() -> T? {
        if let value = list.pop() {
            count -= 1
            return value
        }
        return nil
    }

    public func empty() -> Bool {
        return count == 0
    }

    public func peek() -> T? {
        return list.last
    }
}
