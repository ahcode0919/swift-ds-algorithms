//
//  RemoveDuplicatesTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 3/16/21.
//

import swift_ds_algorithms
import Testing

struct RemoveDuplicatesFromSortedArrayTests {
    @Test func testRemoveDuplicatesFromSortedArray() {
        var array = [1, 2, 3]
        RemoveDuplicatesFromSortedArray.removeDuplicates(array: &array)
        #expect(array == [1, 2, 3])

        array = [1, 1, 2, 2, 3, 4, 4]
        RemoveDuplicatesFromSortedArray.removeDuplicates(array: &array)
        #expect(array == [1, 2, 3, 4])
    }
}
