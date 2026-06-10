//
//  BinaryTreeNodeTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/14/26.
//

import swift_ds_algorithms
import Testing

struct BinaryTreeNodeTests {
    @Test func testBinaryTreeNode() {
        let node = BinaryTreeNode<Int>(value: 1)
        #expect(node.value == 1)
        #expect(node.left == nil)
        #expect(node.right == nil)
    }

    @Test func testBinaryTreeNodeWithChildren() {
        let leftNode = BinaryTreeNode<Int>(value: 2)
        let rightNode = BinaryTreeNode<Int>(value: 3)
        let rootNode = BinaryTreeNode<Int>(value: 1, left: leftNode, right: rightNode)
        #expect(rootNode.value == 1)
        #expect(rootNode.left?.value == leftNode.value)
        #expect(rootNode.right?.value == rightNode.value)
        #expect(rootNode.left?.left == nil)
        #expect(rootNode.left?.right == nil)
        #expect(rootNode.right?.left == nil)
        #expect(rootNode.right?.right == nil)
    }
}
