//
//  CondenseWhitespaceTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 10/13/17.
//

import Testing
@testable import swift_ds_algorithms

struct CondenseWhitespaceTests {

    @Test func testCondenseWhitespaceWithLoop() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithLoop(testString)
        #expect(result == " a b c d")
    }

    @Test func testCondenseWhitespaceWithRegex() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithRegex(testString)
        #expect(result == " a b c d")
    }

    @Test func testCondenseWhitespaceWithSplit() {
        let testString = "  a    b c  d"
        let result = CondenseWhitespace.condenseWhitespaceWithSplit(testString)
        #expect(result == " a b c d")
    }

}
