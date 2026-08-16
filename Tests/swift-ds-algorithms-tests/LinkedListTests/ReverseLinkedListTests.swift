// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct ReverseLinkedListTest {

    @Test func testReverseLinkedList() throws {
        var head: SinglyLinkedListNode<Int>?
        #expect(ReverseLinkedList.reverse(head: head) == nil)

        head = SinglyLinkedListNode(value: 0)
        var result = ReverseLinkedList.reverse(head: head)
        #expect(result?.value == 0)
        #expect(result?.next == nil)

        head = try Helpers.generateLinkedList(ofLength: 10)
        result = ReverseLinkedList.reverse(head: head)
        #expect(result != nil)

        let values = Helpers.linkedListToArray(head: result)
        #expect(values == [9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
    }

    @Test func testReverseLinkedListRecursive() throws {
        var head: SinglyLinkedListNode<Int>?
        #expect(ReverseLinkedList.reverseRecursive(head: head) == nil)

        head = SinglyLinkedListNode(value: 0)
        var result = ReverseLinkedList.reverseRecursive(head: head)
        #expect(result?.value == 0)
        #expect(result?.next == nil)

        head = try Helpers.generateLinkedList(ofLength: 10)
        result = ReverseLinkedList.reverseRecursive(head: head)
        #expect(result != nil)

        let values = Helpers.linkedListToArray(head: result)
        #expect(values == [9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
    }
}
