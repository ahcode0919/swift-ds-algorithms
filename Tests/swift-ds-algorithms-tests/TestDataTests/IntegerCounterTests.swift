// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct IntegerCounterTests {

    @Test func testIntegerCounter() throws {
        var counter = IntegerCounter()
        #expect(counter.next() == 0)
        #expect(counter.next() == 1)

        counter = IntegerCounter(start: 5)
        #expect(counter.next() == 5)
        #expect(counter.next() == 6)
    }
}
