// Pairs.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

/// Generate pairs of elements from an array.
public enum Pairs {
    /// Returns every unique pair of elements from the array, without repeating a pair in
    /// reverse order.
    public static func pairs(for elements: [String]) -> [[String]] {
        var pairs = [[String]]()

        for i in 0..<elements.count {
            for j in i + 1..<elements.count {
                pairs.append([elements[i], elements[j]])
            }
        }

        return pairs
    }
}
