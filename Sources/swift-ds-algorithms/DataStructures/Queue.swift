//
//  Queue.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/20/26.
//

/// Queue data structure backed by a `DoublyLinkedList`. Queue is a FIFO data structure.
public class Queue<T> {

    public private(set) var count: Int = 0

    public init() { }

    private var list: DoublyLinkedList<T> = DoublyLinkedList<T>()

    /// Add a value to the back of the queue.
    public func enqueue(_ value: T) {
        count += 1
        list.appendLeft(value)
    }

    /// Remove and return the value at the front of the queue.
    @discardableResult
    public func deque() -> T? {
        if let value = list.pop() {
            count -= 1
            return value
        }
        return nil
    }

    /// Returns true if the queue contains no elements.
    public func empty() -> Bool {
        return count == 0
    }

    /// Returns the value at the front of the queue without removing it.
    public func peek() -> T? {
        return list.last
    }
}
