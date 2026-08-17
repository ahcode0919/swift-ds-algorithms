//
//  BinaryTreeNode.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/14/26.
//

/// Node used by binary tree algorithms, holding a value and optional left/right children.
public class BinaryTreeNode<T> {
    public var value: T
    public var left: BinaryTreeNode?
    public var right: BinaryTreeNode?

    public init(value: T, left: BinaryTreeNode? = nil, right: BinaryTreeNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}
