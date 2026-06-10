//
//  ArrayRemoveDuplicatesTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 10/13/17.
//

import Testing
@testable import swift_ds_algorithms

struct ArrayRemoveDuplicatesTests {
    @Test func testRemoveDuplicatesWithNSOrderedSet() {
        let testString = Helpers.generateRandomString(ofLength: 50)
        let array = Array(testString)
        let uniqueArray = ArrayRemoveDuplicates.removeDuplicatesWithNSOrderedSet(array)

        #expect(Set(uniqueArray).count == uniqueArray.count)
    }

    @Test func testRemoveDuplicatesWithReduce() {
        let testString = Helpers.generateRandomString(ofLength: 50)
        let array = Array(testString)
        let uniqueArray = ArrayRemoveDuplicates.removeDuplicatesWithReduce(array)

        #expect(Set(uniqueArray).count == uniqueArray.count)
    }

    @Test func testRemoveDuplicatesWithSet() {
        let testString = Helpers.generateRandomString(ofLength: 50)
        let array = Array(testString)
        let uniqueArray = ArrayRemoveDuplicates.removeDuplicatesWithSet(array)

        #expect(Set(uniqueArray).count == uniqueArray.count)
    }

}
