//
//  DoublyLinkedList.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/20/26.
//

public class DoublyLinkedList<T> {
    private var dummyHead: DoublyLinkedListNode<T>
    private var dummyTail: DoublyLinkedListNode<T>

    public private(set) var count: Int = 0

    public var first: T? {
        return dummyHead.next?.value
    }

    public var last: T? {
        return dummyTail.previous?.value
    }

    public init() {
        self.dummyHead = DoublyLinkedListNode(value: nil)
        self.dummyTail = DoublyLinkedListNode(value: nil)
        self.dummyHead.next = dummyTail
        self.dummyTail.previous = dummyHead
    }

    public func append(_ value: T) {
        let node = DoublyLinkedListNode<T>(value: value)
        count += 1

        dummyTail.previous?.next = node
        node.previous = dummyTail.previous
        dummyTail.previous = node
        node.next = dummyTail
    }

    public func appendLeft(_ value: T) {
        let node = DoublyLinkedListNode<T>(value: value)
        count += 1

        node.next = dummyHead.next
        dummyHead.next?.previous = node
        node.previous = dummyHead
        dummyHead.next? = node
    }

    public func empty() -> Bool {
        return count == 0
    }

    public func pop() -> T? {
        guard let previous = dummyTail.previous, previous !== dummyHead else {
            return nil
        }
        previous.previous?.next = dummyTail
        dummyTail.previous = previous.previous
        count -= 1

        previous.next = nil
        previous.previous = nil

        return previous.value
    }

    public func popLeft() -> T? {
        guard let next = dummyHead.next, next !== dummyTail else {
            return nil
        }
        dummyHead.next = next.next
        count -= 1

        next.next = nil
        next.previous = nil

        return next.value
    }
}
