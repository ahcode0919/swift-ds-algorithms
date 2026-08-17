// SinglyLinkedListData.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

/// Test fixtures for building singly linked lists.
public enum SinglyLinkedListData {

    /// Builds a linked list of the given length with sequential integer values starting at 0.
    public static func linkedList(ofLength length: Int) -> SinglyLinkedListNode<Int>? {
        guard length >= 0 else {
            return nil
        }

        let dummyHead = SinglyLinkedListNode(value: 0)
        var last = dummyHead

        for index in 0..<length {
            let node = SinglyLinkedListNode(value: index)
            last.next = node
            last = node
        }

        return dummyHead.next
    }

    /// Builds a linked list containing the given array's elements in order.
    public static func linkedList<T>(from array: [T]) -> SinglyLinkedListNode<T>? {
        var head: SinglyLinkedListNode<T>?
        var last: SinglyLinkedListNode<T>?

        for value in array {
            let node = SinglyLinkedListNode(value: value)

            if head == nil {
                head = SinglyLinkedListNode(value: value)
                last = head
            } else {
                last?.next = node
                last = node
            }
        }

        return head
    }

    /// Returns the values of a linked list as an array, in order from head to tail.
    public static func linkedListToArray<T>(head: SinglyLinkedListNode<T>?) -> [T] {
        var result: [T] = []
        var current = head

        while let node = current {
            result.append(node.value)
            current = node.next
        }
        return result
    }
}
