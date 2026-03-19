//
//  HelpersTest.swift
//  swift-algorithmsTests
//
//  Created by Aaron Hinton on 8/1/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import XCTest
@testable import swift_ds_algorithms

class HelpersTests: XCTestCase {
    func testGenerateRandomString() {
        let string = Helpers.generateRandomString(ofLength: 5)
        XCTAssertEqual(string.count, 5)
    }
}
