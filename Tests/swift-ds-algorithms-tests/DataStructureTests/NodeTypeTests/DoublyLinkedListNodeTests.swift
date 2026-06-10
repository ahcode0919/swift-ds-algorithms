//
//  DoublyLinkedListNodeTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/20/26.
//

import swift_ds_algorithms
import Testing

struct DoublyLinkedListNodeTests {

    @Test
    func testInitializer() {
        let node = DoublyLinkedListNode(value: 5)
        #expect(node.value == 5)
        #expect(node.next == nil)
        #expect(node.previous == nil)
    }

    @Test
    func testDoublyLinkedListNode() {
        let node = DoublyLinkedListNode(value: 5)
        node.previous = DoublyLinkedListNode(value: 3)
        node.next = DoublyLinkedListNode(value: 9)
        #expect(node.value == 5)
        #expect(node.next?.value == 9)
        #expect(node.previous?.value == 3)
    }
}
