//
//  SinglyLinkedListNode.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 1/12/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import Foundation

public class SinglyLinkedListNode<T> {
    public var next: SinglyLinkedListNode<T>?
    public var value: T
    
    public init(value: T) {
        self.value = value
    }
}
