// ZipperLists.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

/// Interleave (zipper) two singly linked lists node by node.
public enum ZipperLists {
    /// Merges `head1` and `head2` by alternating nodes from each list. Any remaining nodes
    /// from the longer list are appended at the end.
    public static func zipper(
        head1: SinglyLinkedListNode<String>?,
        head2: SinglyLinkedListNode<String>?
    ) -> SinglyLinkedListNode<String>? {
        let dummyHead = SinglyLinkedListNode<String>(value: "")
        var current1: SinglyLinkedListNode<String>? = head1
        var current2: SinglyLinkedListNode<String>? = head2
        var current: SinglyLinkedListNode<String>? = dummyHead

        while let node1 = current1, let node2 = current2 {
            current?.next = node1
            current1 = node1.next
            current = current?.next

            current?.next = node2
            current2 = node2.next
            current = current?.next
        }

        if let node = current1 {
            current?.next = node
        }

        if let node = current2 {
            current?.next = node
        }

        return dummyHead.next
    }
}
