//
//  BracketsTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 6/10/26.
//

import Testing
@testable import swift_ds_algorithms

struct BracketsTests {
    @Test func testValidBrackets() {
        var input = "()"
        #expect(Brackets.validBrackets(input))

        input = "{}}"
        #expect(Brackets.validBrackets(input) == false)

        input = "[{{}}]"
        #expect(Brackets.validBrackets(input))

        input = "[]{}(){[]}"
        #expect(Brackets.validBrackets(input))
    }
}
