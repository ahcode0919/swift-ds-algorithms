//
//  FindLongestPrefixTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 6/8/18.
//

import Testing
@testable import swift_ds_algorithms

struct FindLongestPrefixTests {

    @Test func testFindLongestPrefix() {
        var testString = "tesx testxx testerx testing"
        var result = FindLongestPrefix.findLongestPrefix(testString)
        #expect(result == "tes")

        testString = ""
        result = FindLongestPrefix.findLongestPrefix(testString)
        #expect(result == "")

        testString = "testing testerx testxxx"
        result = FindLongestPrefix.findLongestPrefix(testString)
        #expect(result == "test")

        testString = "test test test"
        result = FindLongestPrefix.findLongestPrefix(testString)
        #expect(result == "test")
    }
}
