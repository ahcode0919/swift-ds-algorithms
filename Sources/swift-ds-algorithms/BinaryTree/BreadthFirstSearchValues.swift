// BreadthFirstSearch.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/16/26.
// Copyright © 2026. All rights reserved.
//

public enum BreadthFirstSearch {
    public static func bfsValues(root: BinaryTreeNode<Int>?) -> [Int] {
        var values = [Int]()

        guard let root else {
            return values
        }

        let queue = Queue<BinaryTreeNode<Int>>()
        queue.enqueue(root)

        while let node = queue.deque() {
            values.append(node.value)
            if let left = node.left {
                queue.enqueue(left)
            }
            if let right = node.right {
                queue.enqueue(right)
            }
        }

        return values
    }
}
