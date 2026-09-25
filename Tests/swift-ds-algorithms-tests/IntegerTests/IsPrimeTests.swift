// Test.swift
// swift-ds-algorithms
//
// Created by Aaron on 9/24/26.
// Copyright © 2026. All rights reserved.
//

@testable import swift_ds_algorithms
import Testing

struct IsPrimeTest {

    @Test func testIsPrime() throws {
        #expect(IsPrime.isPrime(number: -5) == false)
        #expect(IsPrime.isPrime(number: 0) == false)
        #expect(IsPrime.isPrime(number: 1) == false)
        #expect(IsPrime.isPrime(number: 2))
        #expect(IsPrime.isPrime(number: 3))
        #expect(IsPrime.isPrime(number: 29))
        #expect(IsPrime.isPrime(number: 30) == false)
    }
}
