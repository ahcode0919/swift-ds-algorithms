// ReverseLinkedList.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

public enum ReverseLinkedList {
    public static func reverse(head: SinglyLinkedListNode<Int>?) -> SinglyLinkedListNode<Int>? {
        var prev: SinglyLinkedListNode<Int>?
        var current: SinglyLinkedListNode<Int>? = head

        while current != nil {
            let temp = current?.next
            current?.next = prev
            prev = current
            current = temp
        }

        return prev
    }

    public static func reverseRecursive(
        head: SinglyLinkedListNode<Int>?,
        prev: SinglyLinkedListNode<Int>? = nil
    ) -> SinglyLinkedListNode<Int>? {
        if head == nil {
            return prev
        }

        let temp = head?.next
        head?.next = prev
        return reverseRecursive(head: temp, prev: head)
    }
}
