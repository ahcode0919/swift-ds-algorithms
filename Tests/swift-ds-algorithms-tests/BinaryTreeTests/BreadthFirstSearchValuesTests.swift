// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct BreadthFirstValuesTests {

    @Test func testBreadthFirstValues() throws {
        var tree = BinaryTreeData.balanced(depth: -1)
        var result = BreadthFirstSearch.bfsValues(root: tree)
        #expect(result.count == 0)

        tree = BinaryTreeData.balanced(depth: 0)
        result = BreadthFirstSearch.bfsValues(root: tree)
        #expect(result == [0])

        tree = BinaryTreeData.balanced(depth: 2)
        result = BreadthFirstSearch.bfsValues(root: tree)
        #expect(result == [0, 1, 2, 3, 4, 5, 6])

        tree = BinaryTreeData.unbalanced()
        result = BreadthFirstSearch.bfsValues(root: tree)
        #expect(result == [0, 1, 2, 3, 4, 5])
    }
}
