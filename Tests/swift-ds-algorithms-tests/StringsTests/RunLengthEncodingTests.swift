//
//  RunLengthEncodingTests.swift
//  swift-algorithms
//
//  Created by Aaron on 8/25/20.
//

import Testing
@testable import swift_ds_algorithms

struct RunLengthEncodingTests {

    @Test func testRunLengthEncoding() {
        #expect(RunLengthEncoding.runLengthEncoding("aaabbcddd") ==  "a3b2cd3")
        #expect(RunLengthEncoding.runLengthEncoding("aaabbccd") ==  "a3b2c2d")
        #expect(RunLengthEncoding.runLengthEncoding("abc") ==  "abc")
        #expect(RunLengthEncoding.runLengthEncoding("") ==  "")
    }
}
