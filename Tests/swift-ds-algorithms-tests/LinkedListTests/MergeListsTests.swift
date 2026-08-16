// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct MergeListsTests {

    @Test func testMergeLists() throws {
        var list1: SinglyLinkedListNode<Int>? = try Helpers.generateLinkedList(from: [1, 4, 5, 7, 10])
        var list2: SinglyLinkedListNode<Int>? = try Helpers.generateLinkedList(from: [0, 3, 6, 8, 10, 11])
        var result = MergeLists.merge(head1: list1, head2: list2)
        var values = Helpers.linkedListToArray(head: result)
        #expect(values == [0, 1, 3, 4, 5, 6, 7, 8, 10, 10, 11])

        list1 = nil
        list2 = nil
        result = MergeLists.merge(head1: list1, head2: list2)
        #expect(result == nil)

        list1 = try Helpers.generateLinkedList(from: [1, 2, 3])
        list2 = nil
        result = MergeLists.merge(head1: list1, head2: list2)
        values = Helpers.linkedListToArray(head: result)
        #expect(values == [1, 2, 3])
    }
}
