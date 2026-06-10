//
//  PangramTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 5/17/18.
//

import Testing
@testable import swift_ds_algorithms

struct PangramTests {

    @Test func testIsPangramWithSet() {
        let testString = "abcdefghijklmnopqrstuvwxyz"
        #expect(Pangram.isPangramWithSet(testString))
    }

    @Test func testIsPangramWithLoop() {
        let testString = "abcdefghijklmnopqrstuvwxyz"
        #expect(Pangram.isPangramWithLoop(testString))
    }
}
