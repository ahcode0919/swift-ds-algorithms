//
//  DoublyLinkedListTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/22/26.
//

import swift_ds_algorithms
import Testing

struct DoublyLinkedListTests {
    @Test
    func testInitializer() {
        let list = DoublyLinkedList<Int>()
        #expect(list.empty())
        #expect(list.first == nil)
        #expect(list.last == nil)
        #expect(list.count == 0)
    }

    @Test
    func testCount() {
        let list = DoublyLinkedList<Int>()
        #expect(list.count == 0)

        list.append(1)
        #expect(list.count == 1)
    }

    @Test
    func testFirst() {
        let list = DoublyLinkedList<Int>()
        #expect(list.first == nil)

        list.append(1)
        list.append(2)
        #expect(list.first == 1)

        #expect(list.popLeft() == 1)
        #expect(list.first == 2)
        #expect(list.popLeft() == 2)
        #expect(list.first == nil)
    }

    @Test
    func testLast() {
        let list = DoublyLinkedList<Int>()
        #expect(list.last == nil)

        list.append(1)
        #expect(list.last == 1)

        #expect(list.pop() == 1)
        #expect(list.last == nil)
    }

    @Test
    func testAppend() {
        let list = DoublyLinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)

        #expect(list.pop() == 3)
        #expect(list.pop() == 2)
        #expect(list.pop() == 1)
    }

    @Test
    func testAppendLeft() {
        let list = DoublyLinkedList<Int>()
        list.appendLeft(1)
        list.appendLeft(2)
        list.appendLeft(3)

        #expect(list.pop() == 1)
        #expect(list.pop() == 2)
        #expect(list.pop() == 3)
    }

    @Test
    func testEmpty() {
        let list = DoublyLinkedList<Int>()
        #expect(list.empty())

        list.append(1)
        #expect(list.empty() == false)
    }

    @Test
    func testPop() {
        let list = DoublyLinkedList<Int>()
        list.append(1)
        list.append(2)

        #expect(list.count == 2)
        #expect(list.pop() == 2)
        #expect(list.count == 1)
        #expect(list.pop() == 1)
        #expect(list.count == 0)
        #expect(list.pop() == nil)
    }

    @Test
    func testPopLeft() {
        let list = DoublyLinkedList<Int>()
        list.append(1)
        list.append(2)

        #expect(list.popLeft() == 1)
        #expect(list.count == 1)
        #expect(list.popLeft() == 2)
        #expect(list.count == 0)
        #expect(list.popLeft() == nil)
    }

    @Test
    func testOperations() {
        let list = DoublyLinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        #expect(list.count == 3)
        #expect(list.popLeft() == 1)
        #expect(list.count == 2)
        list.appendLeft(10)
        #expect(list.count == 3)
        #expect(list.pop() == 3)
        #expect(list.count == 2)
        #expect(list.popLeft() == 10)
        #expect(list.count == 1)
        #expect(list.pop() == 2)
        #expect(list.count == 0)
        #expect(list.empty())
    }
}
