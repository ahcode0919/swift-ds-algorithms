//
//  Test.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/14/26.
//
import swift_ds_algorithms
import Testing

struct ValidateBinaryTreeTests {

    @Test func validateNilBinaryTree() async throws {
        #expect(ValidateBinaryTree.isValidBST(nil) == false)
    }

    @Test func validateSingleNodeBinaryTree() async throws {
        let root = BinaryTreeNode<Int>(value: 1)
        #expect(ValidateBinaryTree.isValidBST(root))
    }

    @Test func validateBinaryTree() async throws {
        let root = BinaryTreeNode<Int>(value: 1)
        root.left = BinaryTreeNode(value: 5)
        root.left?.left = BinaryTreeNode(value: 3)
        root.left?.right = BinaryTreeNode(value: 7)
        root.left?.right?.left = BinaryTreeNode(value: 2)
        root.right = BinaryTreeNode(value: 10)
        root.right?.left = BinaryTreeNode(value: 6)
        root.right?.right = BinaryTreeNode(value: 20)
        #expect(!ValidateBinaryTree.isValidBST(root))
    }

    @Test func validateInvalidNodeBinaryTree() async throws {
        let root = BinaryTreeNode<Int>(value: 1)
        root.left = BinaryTreeNode(value: 10)
        root.right = BinaryTreeNode(value: 5)
        #expect(!ValidateBinaryTree.isValidBST(root))
    }
}
