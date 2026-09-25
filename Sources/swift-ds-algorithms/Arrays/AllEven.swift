// AllEven.swift
// swift-ds-algorithms
//
// Created by Aaron on 9/24/26.
// Copyright © 2026. All rights reserved.
//

import Foundation

public enum AllEven {

    /// Check if all numbers in an array are even
    static public func allEven(in numbers: [Int]) -> Bool {
        for number in numbers {
            if number % 2 != 0 {
                return false
            }
        }
        return true
    }
}
