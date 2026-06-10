//
//  VowelsAndConsonantsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 5/17/18.
//

import Testing
@testable import swift_ds_algorithms

struct VowelsAndConsonantsTests {

    @Test func testVowelsAndConsonantsForEach() {
        let test = "Mississippi$^#$@"
        let result = VowelsAndConsonants.vowelsAndConsonantsForEach(test)
        #expect(result.vowels == 4)
        #expect(result.consonants == 7)
    }

}
