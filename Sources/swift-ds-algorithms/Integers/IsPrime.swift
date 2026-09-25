// IsPrime.swift
// swift-ds-algorithms
//
// Created by Aaron on 9/24/26.
// Copyright © 2026. All rights reserved.
//

import Foundation

public enum IsPrime {

    /// Checks if a number is a prime number
    /// A prime number is a number that is only divisible by 1 and itself
    public static func isPrime(number: Int) -> Bool {
        guard number > 1 else {
            return false
        }

        for num in 2 ..< number {
            if number % num == 0 {
                return false
            }
        }
        return true
    }
}
