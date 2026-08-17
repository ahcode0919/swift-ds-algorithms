// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct BinaryTreeDataTests {

    @Test func testBalancedTree() throws {
        var tree = BinaryTreeData.balanced(depth: -1)
        #expect(tree == nil)

        tree = BinaryTreeData.balanced(depth: 0)
        #expect(tree?.value == 0)

        tree = BinaryTreeData.balanced(depth: 2)
        let values = BinaryTreeData.levelOrderValues(root: tree)
        #expect(values == [0, 1, 2, 3, 4, 5, 6])
    }

    @Test func testInorderValues() {
        let root = BinaryTreeNode(value: 0)
        let a = BinaryTreeNode(value: 1)
        let b = BinaryTreeNode(value: 2)
        let c = BinaryTreeNode(value: 3)
        root.left = a
        root.right = b
        b.right = c

        let values = BinaryTreeData.inOrderValues(root: root)
        #expect(values == [1, 0, 2, 3])
    }

    @Test func testLevelOrder() {
        let root = BinaryTreeNode(value: 0)
        let a = BinaryTreeNode(value: 1)
        let b = BinaryTreeNode(value: 2)
        let c = BinaryTreeNode(value: 3)
        root.left = a
        root.right = b
        b.right = c

        let values = BinaryTreeData.levelOrderValues(root: root)
        #expect(values == [0, 1, 2, 3])
    }
}
