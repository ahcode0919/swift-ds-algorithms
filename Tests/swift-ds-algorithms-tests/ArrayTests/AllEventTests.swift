// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 9/24/26.
// Copyright © 2026. All rights reserved.
//

@testable import swift_ds_algorithms
import Testing

struct AllEvenTests {

    @Test func testAllEven() throws {
        var numbers: [Int] = []
        #expect(AllEven.allEven(in: numbers))

        numbers = [2]
        #expect(AllEven.allEven(in: numbers))

        numbers = [2, 6, 10, 100, -12]
        #expect(AllEven.allEven(in: numbers))

        numbers = [-1]
        #expect(AllEven.allEven(in: numbers) == false)

        numbers = [-2, 4, 6, 7]
        #expect(AllEven.allEven(in: numbers) == false)
    }

}
