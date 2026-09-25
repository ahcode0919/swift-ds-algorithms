// MostFrequentChar.swift
// swift-ds-algorithms
//
// Created by Aaron on 9/24/26.
// Copyright © 2026. All rights reserved.
//

import Foundation

public enum MostFrequentChar {

    /// Find most frequently occurring Character in a String
    public static func mostFrequent(in string: String) -> Character? {
        guard string.count > 0 else {
            return nil
        }

        var count: [Character: Int] = [:]
        var mostFrequent: (Character, Int) = ("_", -1)

        for char in string {
            count[char, default: 0] += 1

            if let count = count[char], count >= mostFrequent.1 {
                mostFrequent = (char, count)
            }
        }

        return mostFrequent.0
    }
}
