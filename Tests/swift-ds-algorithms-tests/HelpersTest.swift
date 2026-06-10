//
//  HelpersTest.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/1/17.
//

import Testing
@testable import swift_ds_algorithms

struct HelpersTests {
    @Test func testGenerateRandomString() {
        let string = Helpers.generateRandomString(ofLength: 5)
        #expect(string.count == 5)
    }
}
