//
//  StackTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 3/14/21.
//

import swift_ds_algorithms
import Testing

@MainActor
struct StackTests {

    private var stack: Stack<Int>

    private init() async throws {
        stack = Stack<Int>()
    }

    @Test func testInit() {
        #expect(stack.empty())
        #expect(stack.size() == 0)
        #expect(stack.pop() == nil)
    }

    @Test func testEmpty() {
        #expect(stack.empty())

        stack.push(value: 1)
        #expect(stack.empty() == false)
    }

    @Test func testPeek() {
        #expect(stack.peek() == nil)

        stack.push(value: 1)
        #expect(stack.peek() == 1)
    }

    @Test func testPop() {
        stack.push(value: 1)
        stack.push(value: 2)
        #expect(stack.pop() == 2)
        #expect(stack.pop() == 1)
        #expect(stack.pop() ==  nil)
    }

    @Test func testPush() {
        stack.push(value: 1)
        #expect(stack.size() == 1)
        #expect(stack.pop() == 1)
    }

    @Test func testSize() {
        #expect(stack.size() == 0)

        stack.push(value: 1)
        stack.push(value: 2)
        #expect(stack.size() == 2)
    }
}
