// TreeSum.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

public enum TreeSum {
    public static func treeSumIterative(root: BinaryTreeNode<Int>?) -> Int {
        var total = 0

        guard let root else {
            return total
        }

        var stack = [root]

        while let node = stack.popLast() {
            total += node.value

            if let right = node.right {
                stack.append(right)
            }

            if let left = node.left {
                stack.append(left)
            }
        }

        return total
    }

    public static func treeSumRecursive(root: BinaryTreeNode<Int>?) -> Int {
        guard let root else {
            return 0
        }

        var total = root.value
        total += treeSumRecursive(root: root.left)
        total += treeSumRecursive(root: root.right)
        return total
    }
}
