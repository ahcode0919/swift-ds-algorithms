//
//  ReverseSomeCharsTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 6/10/26.
//

import Testing
@testable import swift_ds_algorithms

struct ReverseSomeCharsTests {

    @Test func testReverseSomeChars() {
        var reversed = ReverseSomeChars.reverseSomeChars(str: "computer", chars: ["a", "e", "i", "o", "u"])
        #expect(reversed == "cemputor")

        reversed = ReverseSomeChars.reverseSomeChars(str: "skateboard", chars: ["a", "e", "i", "o", "u"])
        #expect(reversed == "skatobeard")

        reversed = ReverseSomeChars.reverseSomeChars(str: "airplane", chars: ["m", "n", "r"])
        #expect(reversed == "ainplare")

        reversed = ReverseSomeChars.reverseSomeChars(str: "building", chars: ["g", "d", "i"])
        #expect(reversed == "buglidni")
    }
}
