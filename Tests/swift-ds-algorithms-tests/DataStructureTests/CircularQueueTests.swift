//
//  CircularQueueTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/22/26.
//
import swift_ds_algorithms
import Testing

struct CircularQueueTests {
    @Test
    func testInitialization() {
        var queue = CircularQueue<Int>()
        #expect(queue.count == 0)
        #expect(queue.capacity == 16)

        queue = CircularQueue<Int>(capacity: 32)
        #expect(queue.count == 0)
        #expect(queue.capacity == 32)
    }

    @Test
    func testDeque() {
        let queue = CircularQueue<Int>()
        #expect(queue.deque() == nil)

        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        #expect(queue.deque() == 1)
        #expect(queue.deque() == 2)
        #expect(queue.deque() == 3)
        #expect(queue.deque() == nil)
    }

    @Test
    func testEnqueue() {
        let queue = CircularQueue<Int>()
        queue.enqueue(1)
        #expect(queue.count == 1)

        queue.enqueue(2)
        #expect(queue.count == 2)

        #expect(queue.deque() == 1)
        #expect(queue.count == 1)
        #expect(queue.deque() == 2)
        #expect(queue.count == 0)
    }

    @Test
    func testAutomaticResize() {
        let queue = CircularQueue<Int>(capacity: 1)
        #expect(queue.capacity == 1)

        queue.enqueue(1)
        #expect(queue.count == 1)
        #expect(queue.capacity == 1)

        queue.enqueue(2)
        #expect(queue.capacity == 2)

        queue.enqueue(3)
        #expect(queue.capacity == 4)
    }

    @Test
    func testEmpty() {
        let queue = CircularQueue<Int>()
        #expect(queue.empty())

        queue.enqueue(1)
        #expect(queue.empty() == false)
    }

    @Test
    func testResize() {
        let queue = CircularQueue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        #expect(queue.capacity == 16)

        queue.resize(capacity: 32)
        #expect(queue.capacity == 32)

        queue.resize(capacity: 16)
        #expect(queue.capacity == 32)
        #expect(queue.deque() == 1)
        #expect(queue.deque() == 2)
        #expect(queue.deque() == 3)
    }
}
