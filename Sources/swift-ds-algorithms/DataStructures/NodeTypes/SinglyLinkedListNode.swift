//
//  SinglyLinkedListNode.swift
//  swift-algorithms
//
//  Created by Aaron on 1/12/21.
//

import Foundation

public class SinglyLinkedListNode<T> {
    public var next: SinglyLinkedListNode<T>?
    public var value: T

    public init(value: T) {
        self.value = value
    }
}
