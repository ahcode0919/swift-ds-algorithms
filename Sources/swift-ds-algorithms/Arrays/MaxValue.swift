// MaxValue.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

/// Find the maximum value in an array of integers.
public enum MaxValue {
    /// Returns the maximum value using the built-in `max()` function.
    public static func max_value_builtin(nums: [Int]) -> Int? {
        guard !nums.isEmpty else {
            return nil
        }

        return nums.max()
    }

    /// Returns the maximum value by iterating and tracking the running maximum.
    public static func max_value(nums: [Int]) -> Int? {
        guard nums.count > 0 else {
            return nil
        }

        var max = Int.min

        for num in nums {
            if num > max {
              max = num
            }
        }
        return max
    }
}
