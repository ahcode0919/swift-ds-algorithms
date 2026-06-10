//
//  FirstNotRepeatingCharacterTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 7/10/18.
//

import Testing
@testable import swift_ds_algorithms

struct FirstNotRepeatingCharacterTests {

    @Test func testFirstWithDictionary() {
        let input = "aaccbbdee"
        var result = FirstNotRepeatingCharacter.firstWithDictionary(input)
        #expect(result == "d")

        result = FirstNotRepeatingCharacter.firstWithDictionary("aa")
        #expect(result == "_")
    }
}
