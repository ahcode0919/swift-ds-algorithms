// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct ZipperListsTests {

    @Test func zipperLists() throws {
        var result = ZipperLists.zipper(head1: nil, head2: nil)
        #expect(result == nil)

        var list1 = try Helpers.generateLinkedList(from: ["a", "b", "c"])
        var list2 = try Helpers.generateLinkedList(from: ["x", "y", "z"])
        result = ZipperLists.zipper(head1: list1, head2: list2)

        var values = Helpers.linkedListToArray(head: result)
        #expect(values == ["a", "x", "b", "y", "c", "z"])

        list1 = try Helpers.generateLinkedList(from: ["a", "b", "c"])
        list2 = try Helpers.generateLinkedList(from: ["x", "y"])
        result = ZipperLists.zipper(head1: list1, head2: list2)

        values = Helpers.linkedListToArray(head: result)
        #expect(values == ["a", "x", "b", "y", "c"])

        list1 = try Helpers.generateLinkedList(from: ["a", "b"])
        list2 = try Helpers.generateLinkedList(from: ["x", "y", "z"])
        result = ZipperLists.zipper(head1: list1, head2: list2)

        values = Helpers.linkedListToArray(head: result)
        #expect(values == ["a", "x", "b", "y", "z"])

        list1 = try Helpers.generateLinkedList(from: ["a", "b", "c"])
        result = ZipperLists.zipper(head1: list1, head2: nil)

        values = Helpers.linkedListToArray(head: result)
        #expect(values == ["a", "b", "c"])
    }
}
