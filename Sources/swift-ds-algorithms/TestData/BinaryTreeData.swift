// BinaryTree.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

public enum BinaryTreeData {
    public static func balanced(depth: Int) -> BinaryTreeNode<Int>? {
        guard depth >= 0 else { return nil }

        let counter = IntegerCounter()
        let root = BinaryTreeNode(value: counter.next())
        var currentDepth = 0

        let queue = Queue<BinaryTreeNode<Int>>()
        queue.enqueue(root)

        while currentDepth < depth {
            let count = queue.count

            for _ in 0..<count {
                guard let node = queue.deque() else {
                    continue
                }
                let left = BinaryTreeNode(value: counter.next())
                let right = BinaryTreeNode(value: counter.next())
                queue.enqueue(left)
                queue.enqueue(right)
                node.left = left
                node.right = right
            }
            currentDepth += 1
        }

        return root
    }

    public static func inOrderValues<T>(root: BinaryTreeNode<T>?) -> [T] {
        return inOrder(node: root)
    }

    private static func inOrder<T>(node: BinaryTreeNode<T>?) -> [T] {
        var values = [T]()

        guard let node else {
            return values
        }

        values.append(contentsOf: inOrder(node: node.left))
        values.append(node.value)
        values.append(contentsOf: inOrder(node: node.right))
        return values
    }

    public static func levelOrderValues<T>(root: BinaryTreeNode<T>?) -> [T] {
        var result = [T]()

        guard let root else {
            return result
        }

        let queue = Queue<BinaryTreeNode<T>>()
        queue.enqueue(root)

        while let node = queue.deque() {
            result.append(node.value)
            if let left = node.left {
                queue.enqueue(left)
            }
            if let right = node.right {
                queue.enqueue(right)
            }
        }

        return result
    }

    public static func unbalanced() -> BinaryTreeNode<Int> {
        let c = BinaryTreeNode(value: 3)
        let d = BinaryTreeNode(value: 4)
        let e = BinaryTreeNode(value: 5)
        let a = BinaryTreeNode(value: 1, left: c, right: d)
        let b = BinaryTreeNode(value: 2, left: nil, right: e)
        let root = BinaryTreeNode(value: 0, left: a, right: b)
        return root
    }
}
