//
//  RemoveElementTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron Hinton on 3/19/26.
//

import swift_ds_algorithms
import XCTest

class RemoveElementTests: XCTestCase {
    func testRemoveElement() {
        var input = [0, 1, 2, 2, 3, 0, 4, 2]
        var expected = [0, 1, 3, 0, 4]
        
        var result = RemoveElement.removeElement(from: &input, value: 2)
        
        XCTAssertEqual(Array(input.prefix(upTo: 5)), expected)
        XCTAssertEqual(result, 5)
        
        input = []
        expected = []
        result = RemoveElement.removeElement(from: &input, value: 2)

        XCTAssertEqual(input, expected)
        XCTAssertEqual(result, 0)
        
        input = [0, 1, 2]
        expected = [0, 1, 2]
        result = RemoveElement.removeElement(from: &input, value: 3)

        XCTAssertEqual(input, expected)
        XCTAssertEqual(result, 3)
    }
}
