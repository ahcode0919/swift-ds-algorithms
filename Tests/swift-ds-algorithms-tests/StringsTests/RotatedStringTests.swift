//
//  RotatedStringTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 10/14/17.
//

import Testing
@testable import swift_ds_algorithms

struct RotatedStringTests {

    @Test func testIsRotatedStringWithAddition() {
        let original = "Swift"
        let rotated = "ftSwi"
        let notRotated = "tfSwi"
        #expect(RotatedString.isRotatedStringWithAddition(original, rotated: rotated))
        #expect(RotatedString.isRotatedStringWithAddition(original, rotated: notRotated) == false)
    }

    @Test func testIsRotatedStringWithLoop() {
        let original = "Swift"
        let rotated = "ftSwi"
        let notRotated = "tfSwi"
        #expect(RotatedString.isRotatedStringWithLoop(original, rotated: rotated))
        #expect(RotatedString.isRotatedStringWithLoop(original, rotated: notRotated) == false)
    }

}
