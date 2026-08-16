// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct DepthFirstSearchTests {

    @Test func depthFirstSearchRecursive() async throws {
        var result = DepthFirstSearch.dfsRecursive(root: nil)
        #expect(result == [])

        var root = BinaryTreeNode(value: 1)
        result = DepthFirstSearch.dfsRecursive(root: root)
        #expect(result == [1])

        let c = BinaryTreeNode(value: 3)
        let d = BinaryTreeNode(value: 4)
        let e = BinaryTreeNode(value: 5)
        let a = BinaryTreeNode(value: 1, left: c, right: d)
        let b = BinaryTreeNode(value: 2, left: nil, right: e)
        root = BinaryTreeNode(value: 0, left: a, right: b)
        result = DepthFirstSearch.dfsRecursive(root: root)
        #expect(result == [0, 1, 3, 4, 2, 5])
    }

    @Test func depthFirstSearch() throws {
        var result = DepthFirstSearch.dfs(root: nil)
        #expect(result == [])

        var root = BinaryTreeNode(value: 1)
        result = DepthFirstSearch.dfs(root: root)
        #expect(result == [1])

        let c = BinaryTreeNode(value: 3)
        let d = BinaryTreeNode(value: 4)
        let e = BinaryTreeNode(value: 5)
        let a = BinaryTreeNode(value: 1, left: c, right: d)
        let b = BinaryTreeNode(value: 2, left: nil, right: e)
        root = BinaryTreeNode(value: 0, left: a, right: b)
        result = DepthFirstSearch.dfs(root: root)
        #expect(result == [0, 1, 3, 4, 2, 5])
    }
}
