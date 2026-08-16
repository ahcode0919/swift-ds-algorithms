// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct Test {

    @Test func testPairs() throws {
        var pairs = Pairs.pairs(for: ["a", "b", "c"])
        #expect(pairs.count == 3)
        #expect(pairs == [
            ["a", "b"],
            ["a", "c"],
            ["b", "c"]
        ])

        pairs = Pairs.pairs(for: [])
        #expect(pairs.isEmpty)
        #expect(Pairs.pairs(for: ["a"]).isEmpty)

        pairs = Pairs.pairs(for: ["a", "b", "c", "d"])
        #expect(pairs.count == 6)
        #expect(pairs == [
            ["a", "b"],
            ["a", "c"],
            ["a", "d"],
            ["b", "c"],
            ["b", "d"],
            ["c", "d"]
        ])
    }
}
