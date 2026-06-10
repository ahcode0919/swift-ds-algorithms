//
//  ContainsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/2/17.
//

import Testing
@testable import swift_ds_algorithms

struct ContainsTests {

    @Test func testContainsWithRange() {
        #expect(Contains.containsIgnoreCaseWithRange("Test, Phrase", contains: "Test"))
        #expect(Contains.containsIgnoreCaseWithRange("Test, Phrase", contains: "False") == false)
    }

    @Test func testContainsWithLoop() {
        #expect(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "Test"))
        #expect(Contains.containsIgnoreCaseWithLoop("Test, Phrase", contains: "False") == false)
    }

    @Test func testContainsWithStringAPI() {
        #expect(Contains.containsWithStringAPI("Test, Phrase", contains: "Test"))
        #expect(Contains.containsWithStringAPI("Test, Phrase", contains: "False") == false)
    }
}
