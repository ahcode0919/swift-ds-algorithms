// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct MaxValueTest {

    @Test func testMaxValue()  throws {
        #expect(MaxValue.max_value(nums: [1, 2, 3, 4, 5]) == 5)
        #expect(MaxValue.max_value(nums: []) == nil)
        #expect(MaxValue.max_value(nums: [1]) == 1)
    }
    
    @Test func testMaxValueBuiltin() throws {
        #expect(MaxValue.max_value_builtin(nums: [1, 2, 3, 4, 5]) == 5)
        #expect(MaxValue.max_value_builtin(nums: []) == nil)
        #expect(MaxValue.max_value_builtin(nums: [1]) == 1)
    }

}
