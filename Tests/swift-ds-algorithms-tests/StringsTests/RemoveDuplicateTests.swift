//
//  RemoveDuplicateCharsTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/2/17.
//

import Testing
@testable import swift_ds_algorithms

struct RemoveDuplicatesTests {
    @Test func testRemoveDuplicatesWithNSOrderedSet() {
        #expect(RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: "Wombat") == "Wombat")
        #expect(RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: "hello") == "helo")
        #expect(RemoveDuplicates.removeDuplicatesWithNSOrderedSet(from: "Mississippi") == "Misp")
    }

    @Test func testRemoveDuplicatesWithNSOrderedSetAndFilter() {
        #expect(RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: "Wombat") == "Wombat")
        #expect(RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: "hello") == "helo")
        #expect(RemoveDuplicates.removeDuplicatesWithSetAndFilter(from: "Mississippi") == "Misp")
    }

    @Test func testRemoveDuplicatesWithFilter() {
        #expect(RemoveDuplicates.removeDuplicatesWithFilter(from: "Wombat") == "Wombat")
        #expect(RemoveDuplicates.removeDuplicatesWithFilter(from: "hello") == "helo")
        #expect(RemoveDuplicates.removeDuplicatesWithFilter(from: "Mississippi") == "Misp")
    }

    @Test func testRemoveDuplicatesWithDictionaryAndFilter() {
        #expect(RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: "Wombat") == "Wombat")
        #expect(RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: "hello") == "helo")
        #expect(RemoveDuplicates.removeDuplicatesWithDictionaryAndFilter(from: "Mississippi") == "Misp")
    }

}
