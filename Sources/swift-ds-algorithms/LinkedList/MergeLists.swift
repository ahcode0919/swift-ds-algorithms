// MergeLists.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

/// Merge two sorted singly linked lists into a single sorted list.
public enum MergeLists {
    /// Merges `head1` and `head2`, both assumed to already be sorted in ascending order.
    public static func merge(
        head1: SinglyLinkedListNode<Int>?,
        head2: SinglyLinkedListNode<Int>?
    ) -> SinglyLinkedListNode<Int>? {
        let dummyHead = SinglyLinkedListNode(value: 0)
        var current: SinglyLinkedListNode<Int>? = dummyHead
        var currentHead1 = head1
        var currentHead2 = head2

        while let node1 = currentHead1, let node2 = currentHead2 {
            if node1.value < node2.value {
                current?.next = node1
                currentHead1 = node1.next
            } else {
                current?.next = node2
                currentHead2 = node2.next
            }
            current = current?.next
        }

        if let node = currentHead1 {
            current?.next = node
        }

        if let node = currentHead2 {
            current?.next = node
        }

        return dummyHead.next
    }
}
