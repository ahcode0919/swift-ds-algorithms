// MostFrequentCharTests.swift
// swift-ds-algorithms
//
// Created by Aaron on 9/25/26.
// Copyright © 2026. All rights reserved.
//

@testable import swift_ds_algorithms
import Testing

struct MostFrequentCharTests {

    @Test
    func testMostFrequentChar() throws {
        var string = ""
        #expect(MostFrequentChar.mostFrequent(in: string) == nil)

        string = "aabbbccd"
        #expect(MostFrequentChar.mostFrequent(in: string) == "b")

        string = "aabbcc"
        #expect(MostFrequentChar.mostFrequent(in: string) == "c")
    }
}
