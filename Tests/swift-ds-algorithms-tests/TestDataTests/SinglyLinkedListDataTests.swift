// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct SinglyLinkedListDataTests {

    @Test func testLinkedList() async throws {
        var linkedList = SinglyLinkedListData.linkedList(ofLength: -1)
        #expect(linkedList == nil)

        linkedList = SinglyLinkedListData.linkedList(ofLength: 0)
        #expect(linkedList == nil)

        linkedList = SinglyLinkedListData.linkedList(ofLength: 10)
        let values = SinglyLinkedListData.linkedListToArray(head: linkedList)
        #expect(values == Array(0..<10))
    }

    @Test func testLinkedListFromArray() {
        var linkedList = SinglyLinkedListData.linkedList(from: [] as [Int])
        #expect(linkedList == nil)

        linkedList = SinglyLinkedListData.linkedList(from: [0])
        #expect(linkedList?.value == 0)
        #expect(linkedList?.next == nil)

        linkedList = SinglyLinkedListData.linkedList(from: [1, 2, 3])
        let result = SinglyLinkedListData.linkedListToArray(head: linkedList)
        #expect(result == [1, 2, 3])
    }

    @Test func testLinkedListToArray() {
        var linkedList = SinglyLinkedListData.linkedList(from: [] as [Int])
        #expect(SinglyLinkedListData.linkedListToArray(head: linkedList) == [])

        linkedList = SinglyLinkedListData.linkedList(from: [1, 2, 3])
        #expect(SinglyLinkedListData.linkedListToArray(head: linkedList) == [1, 2, 3])
    }
}
