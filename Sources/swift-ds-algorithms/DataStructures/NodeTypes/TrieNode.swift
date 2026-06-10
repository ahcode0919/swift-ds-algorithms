//
//  TrieNode.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/22/26.
//

public class TrieNode<T> {
    public var value: T
    public var children: [TrieNode<T>]

    public init(value: T) {
        self.value = value
        self.children = []
    }
}
