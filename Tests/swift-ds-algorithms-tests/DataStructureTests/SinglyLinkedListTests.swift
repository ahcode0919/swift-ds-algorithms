//
//  SinglyLinkedListTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 1/12/21.
//

import swift_ds_algorithms
import Testing

@MainActor
struct SinglyLinkedListTests {
    private var linkedList: SinglyLinkedList<Int>
    private var nodes: SinglyLinkedListNode<Int>

    init() async throws {
        linkedList = SinglyLinkedList()
        nodes = SinglyLinkedListNode(value: 1)
        nodes.next = SinglyLinkedListNode(value: 2)
        nodes.next?.next = SinglyLinkedListNode(value: 3)
        linkedList.append(nodes)
    }

    @Test func testSinglyLinkedList() {
        let list = SinglyLinkedList<Int>()
        #expect(list.head == nil)
        #expect(list.length == 0)
        #expect(list.values() == [])
    }

    @Test func testAppend() {
        var list = SinglyLinkedList<Int>()
        let node = SinglyLinkedListNode(value: 0)
        list.append(node)
        #expect(list.length == 1)
        #expect(list.head === node)

        list = SinglyLinkedList<Int>()
        list.append(nodes)
        #expect(list.values() == [1, 2, 3])
        #expect(list.length == 3)
    }

    @Test func testAppendLeft() {
        linkedList.appendLeft(SinglyLinkedListNode(value: 0))
        #expect(linkedList.length == 4)
        #expect(linkedList.values() == [0, 1, 2, 3])
    }

    @Test func testLength() {
        #expect(SinglyLinkedList<Int>().length == 0)
        #expect(linkedList.length == 3)
    }

    @Test func testNodeAtIndex() {
        #expect(linkedList.node(atIndex: 0)?.value == 1)
        #expect(linkedList.node(atIndex: 1)?.value == 2)
    }

    @Test func testPop() {
        let node = linkedList.pop()
        #expect(node?.value == 3)

        let list = SinglyLinkedList<Int>()
        #expect(list.pop() == nil)
    }

    @Test func testPopLeft() {
        let node = linkedList.popLeft()
        #expect(node?.value == 1)

        let list = SinglyLinkedList<Int>()
        #expect(list.popLeft() == nil)
    }

    @Test func testRemoveAtIndex() {
        var node = linkedList.remove(atIndex: 0)
        #expect(node?.value == 1)

        node = linkedList.remove(atIndex: 1)
        #expect(node?.value == 3)
    }

    @Test func testValues() {
        #expect(linkedList.values() == [1, 2, 3])
    }
}
