// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct TreeSumTests {

    @Test func testTreeSumIterative() throws {
        var root: BinaryTreeNode<Int>?
        #expect(TreeSum.treeSumIterative(root: root) == 0)

        root = BinaryTreeNode(value: 1)
        #expect(TreeSum.treeSumIterative(root: root) == 1)

        root = BinaryTreeData.balanced(depth: 2)
        #expect(TreeSum.treeSumIterative(root: root) == 21)
    }

    @Test func testTreesumRecursive() throws {
        var root: BinaryTreeNode<Int>?
        #expect(TreeSum.treeSumRecursive(root: root) == 0)

        root = BinaryTreeNode(value: 1)
        #expect(TreeSum.treeSumRecursive(root: root) == 1)

        root = BinaryTreeData.balanced(depth: 2)
        #expect(TreeSum.treeSumRecursive(root: root) == 21)
    }
}
