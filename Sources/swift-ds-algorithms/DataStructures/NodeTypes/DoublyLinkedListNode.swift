//
//  DoublyLinkedListNode.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/20/26.
//

public class DoublyLinkedListNode<T> {
    public var value: T?
    public var previous: DoublyLinkedListNode?
    public var next: DoublyLinkedListNode?

    public init(value: T?, previous: DoublyLinkedListNode? = nil, next: DoublyLinkedListNode? = nil) {
        self.value = value
        self.previous = previous
        self.next = next
    }
}
