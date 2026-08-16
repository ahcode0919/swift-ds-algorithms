// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

import swift_ds_algorithms
import Testing

struct LongestWordTests {

    @Test func longestWord() throws {
        #expect(LongestWord.longestWord(in: "the quick brown fox jumped over the lazy dog") == "jumped")
        #expect(LongestWord.longestWord(in: "") == nil)
        #expect(LongestWord.longestWord(in: "a") == "a")
        #expect(LongestWord.longestWord(in: " a ") == "a")
    }
    
    @Test func longestWordOnePass() throws {
        #expect(LongestWord.longestWordOnePass(in: "the quick brown fox jumped over the lazy dog") == "jumped")
        #expect(LongestWord.longestWordOnePass(in: "") == nil)
        #expect(LongestWord.longestWordOnePass(in: "a") == "a")
        #expect(LongestWord.longestWordOnePass(in: " a ") == "a")
    }
}
