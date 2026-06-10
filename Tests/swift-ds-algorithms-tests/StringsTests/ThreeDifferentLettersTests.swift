//
//  ThreeDifferentLettersTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 6/7/18.
//

import Testing
@testable import swift_ds_algorithms

struct ThreeDifferentLettersTests {
    @Test func testThreeDifferentLetters() {
        var string1 = "Foobar"
        var string2 = "Foobar"
        #expect(ThreeDifferentLetters.threeDifferentLetters(string1: string1, string2: string2))

        string1 = "foobar"
        string2 = "FcoBcr"
        #expect(ThreeDifferentLetters.threeDifferentLetters(string1: string1, string2: string2) == false)

        string1 = "foobar"
        string2 = "fooba"
        #expect(ThreeDifferentLetters.threeDifferentLetters(string1: string1, string2: string2) == false)
    }

}
