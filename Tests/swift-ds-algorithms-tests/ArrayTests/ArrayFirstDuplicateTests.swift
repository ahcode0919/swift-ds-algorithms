//
//  ArrayFirstDuplicateTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 7/10/18.
//

import Testing
@testable import swift_ds_algorithms

struct ArrayFirstDuplicateTests {
    @Test func testFirstDuplicate() {
        let numbers  = [1, 2, 3, 4, 3, 5]
        #expect(ArrayFirstDuplicate.firstDuplicate([]) == nil)
        #expect(ArrayFirstDuplicate.firstDuplicate([1, 2]) == nil)
        #expect(ArrayFirstDuplicate.firstDuplicate(numbers) == 4)
    }
}
