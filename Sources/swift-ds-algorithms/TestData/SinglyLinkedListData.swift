// SinglyLinkedListData.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

public enum SinglyLinkedListData {

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
