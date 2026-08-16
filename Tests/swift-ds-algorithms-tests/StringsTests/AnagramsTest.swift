// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct AnagramTests {

    @Test func testAnagrams() async throws {
        #expect(Anagrams.isAnagram("hello", "olleh"))
        #expect(Anagrams.isAnagram("hello", "world") == false)
        #expect(Anagrams.isAnagram("hello world", "world hello"))
    }
}
