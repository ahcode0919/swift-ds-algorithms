//
//  ReverseWordsInSentenceTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 1/9/21.
//

import Testing
@testable import swift_ds_algorithms

struct ReverseWordsInSentenceTests {

    @Test func testReverseWordsInSentence() {
        let sentence = "foo bar baz"
        let emptySentence = ""
        let word = "foo"
        #expect(ReverseWordsInSentence.reverse(sentence) == "oof rab zab")
        #expect(ReverseWordsInSentence.reverse(emptySentence) == "")
        #expect(ReverseWordsInSentence.reverse(word) == "oof")
    }
}
