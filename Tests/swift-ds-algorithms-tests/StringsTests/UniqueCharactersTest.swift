//
//  swift_ds_algorithmsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/1/17.
//

import Testing
@testable import swift_ds_algorithms

struct UniqueCharactersTest {

    @Test func testUniqueCharactersWithSet() {
        #expect(UniqueCharacters.uniqueCharactersWithSet("No duplicates"))
        #expect(UniqueCharacters.uniqueCharactersWithSet("abcdefghijklmnopqrstuvwxyz"))
        #expect(UniqueCharacters.uniqueCharactersWithSet("AaBbCc"))
        #expect(UniqueCharacters.uniqueCharactersWithSet("Hello, world") == false)
    }

    @Test func testUniqueCharactersWithLoop() {
        #expect(UniqueCharacters.uniqueCharactersWithLoop("No duplicates"))
        #expect(UniqueCharacters.uniqueCharactersWithLoop("abcdefghijklmnopqrstuvwxyz"))
        #expect(UniqueCharacters.uniqueCharactersWithLoop("AaBbCc"))
        #expect(UniqueCharacters.uniqueCharactersWithLoop("Hello, world") == false)
    }

}
