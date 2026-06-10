//
//  OccurrancesOfCharacterTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 10/13/17.
//

import Testing
@testable import swift_ds_algorithms

struct OccurrencesOfCharacterTests {

    @Test func testCountCharactersWithFilter() {
        #expect(OccurrencesOfCharacter.countOccurancesWithFilter("C", in: "Cash") == 1)
        #expect(OccurrencesOfCharacter.countOccurancesWithFilter("C", in: "Test") == 0)
        #expect(OccurrencesOfCharacter.countOccurancesWithFilter("c", in: "Cash") == 0)
        #expect(OccurrencesOfCharacter.countOccurancesWithFilter("a", in: "") == 0)
    }

    @Test func testOccurrencesOfCharacterWithLoop() {
        let testString = "ababababa"
        let occurrences = OccurrencesOfCharacter.countOccurrencesWithLoop("b", in: testString)
        #expect(occurrences == 4)
    }

    @Test func testOccurrencesOfCharacterWithReduce() {
        let testString = "ababababa"
        let occurrences = OccurrencesOfCharacter.countOccurrencesWithReduce("b", in: testString)
        #expect(occurrences == 4)
    }

}
