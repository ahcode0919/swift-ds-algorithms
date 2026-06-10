//
//  ValidateBinaryTree.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/14/26.
//

public enum ValidateBinaryTree {

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
