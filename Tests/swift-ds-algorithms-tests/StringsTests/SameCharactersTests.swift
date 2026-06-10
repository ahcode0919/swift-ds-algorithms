//
//  SameCharactersTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/2/17.
//

import Testing
@testable import swift_ds_algorithms

struct SameCharactersTests {

    @Test func testSameCharactersWithLoop() {
        #expect(SameCharacters.hasSameCharactersWithLoop("abca", in: "abca"))
        #expect(SameCharacters.hasSameCharactersWithLoop("abc", in: "cba"))
        #expect(SameCharacters.hasSameCharactersWithLoop("abc", in: "abca") == false)
        #expect(SameCharacters.hasSameCharactersWithLoop("abc", in: "Abc") == false)
        #expect(SameCharacters.hasSameCharactersWithLoop("abc", in: "cbAa") == false)
    }

    @Test func testSameCharactersWithSort() {
        #expect(SameCharacters.hasSameCharactersWithSort("abca", in: "abca"))
        #expect(SameCharacters.hasSameCharactersWithSort("abc", in: "cba"))
        #expect(SameCharacters.hasSameCharactersWithSort("abc", in: "abca") == false)
        #expect(SameCharacters.hasSameCharactersWithSort("abc", in: "Abc") == false)
        #expect(SameCharacters.hasSameCharactersWithSort("abc", in: "cbAa") == false)
    }

    @Test func testSameCharactersWithDictionary() {
        #expect(SameCharacters.hasSameCharactersWithDictionary("abca", in: "abca"))
        #expect(SameCharacters.hasSameCharactersWithDictionary("abc", in: "cba"))
        #expect(SameCharacters.hasSameCharactersWithDictionary("abc", in: "abca") == false)
        #expect(SameCharacters.hasSameCharactersWithDictionary("abc", in: "Abc") == false)
        #expect(SameCharacters.hasSameCharactersWithDictionary("abc", in: "cbAa") == false)
    }

}
