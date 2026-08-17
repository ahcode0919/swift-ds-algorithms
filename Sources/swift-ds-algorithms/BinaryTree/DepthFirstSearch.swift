// DepthFirstSearch.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

public enum DepthFirstSearch {
    public static func dfsRecursive(root: BinaryTreeNode<Int>?) -> [Int] {
        guard let root else {
            return []
        }

        var values = [root.value]

        if let left = root.left {
            values.append(contentsOf: dfsRecursive(root: left))
        }

        if let right = root.right {
            values.append(contentsOf: dfsRecursive(root: right))
        }

        return values
    }

    public static func dfs(root: BinaryTreeNode<Int>?) -> [Int] {
        var values = [Int]()

        guard let root else {
            return values
        }

        var stack = [root]

        while stack.isEmpty == false {
            let node = stack.removeLast()
            values.append(node.value)

            if let right = node.right {
                stack.append(right)
            }

            if let left = node.left {
                stack.append(left)
            }
        }

        return values
    }
}
