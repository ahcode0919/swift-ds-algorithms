//
//  SinglyLinkedListNodeTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 1/12/21.
//

import swift_ds_algorithms
import Testing

struct SinglyLinkedListNodeTests {

    func testSinglyLinkedListNode() {
        let node = SinglyLinkedListNode(value: 0)
        #expect(node.next == nil)
        #expect(node.value == 0)

        node.next = SinglyLinkedListNode(value: 1)
        #expect(node.next?.value == 1)
    }
}
