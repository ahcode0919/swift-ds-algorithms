//
//  QueueTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/22/26.
//

import swift_ds_algorithms
import Testing

struct QueueTests {
    @Test
    func testInitializer() {
        let queue = Queue<Int>()
        #expect(queue.count == 0)
    }

    @Test
    func testCount() {
        let queue = Queue<Int>()
        #expect(queue.count == 0)

        queue.enqueue(1)
        #expect(queue.count == 1)

        queue.deque()
        #expect(queue.count == 0)

        queue.deque()
        #expect(queue.count == 0)
    }

    @Test
    func testEnqueue() {
        let queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        #expect(queue.count == 3)
    }

    @Test
    func testDequeue() {
        let queue = Queue<Int>()
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
    func testEmpty() {
        let queue = Queue<Int>()
        #expect(queue.empty())

        queue.enqueue(1)
        #expect(queue.empty() == false)
    }

    @Test
    func testPeek() {
        let queue = Queue<Int>()
        #expect(queue.peek() == nil)

        queue.enqueue(1)
        #expect(queue.peek() == 1)
        #expect(queue.count == 1)
    }
}
