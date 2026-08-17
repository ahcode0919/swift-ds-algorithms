//
//  ValidateBinaryTree.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/14/26.
//

/// Validate whether a binary tree is a valid binary search tree.
public enum ValidateBinaryTree {

    /// Returns true if every node's value falls strictly between the lower and upper
    /// bounds established by its ancestors, verified iteratively with an explicit stack.
    public static func isValidBST(_ root: BinaryTreeNode<Int>?) -> Bool {
        guard let root else {
            return false
        }

        let stack = Stack<(BinaryTreeNode<Int>?, lowest: Int, highest: Int)>()
        stack.push(value: (root, lowest: Int.min, highest: Int.max))

        while !stack.empty() {
            guard let current = stack.pop(), let node = current.0 else {
                continue
            }

            let lowest = current.1
            let highest = current.2

            if node.value <= lowest || node.value >= highest {
                return false
            }

            stack.push(value: (node.right, lowest: node.value, highest: highest))
            stack.push(value: (node.left, lowest: lowest, highest: node.value))
        }
        return true
    }
}
