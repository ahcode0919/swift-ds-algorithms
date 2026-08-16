// Anagrams.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

public enum Anagrams {
    public static func isAnagram(_ a: String, _ b: String) -> Bool {
        var dictA = [Character: Int]()
        var dictB = [Character: Int]()

        for char in a {
            dictA[char, default: 0] += 1
        }

        for char in b {
            dictB[char, default: 0] += 1
        }

        for (key, value) in dictA {
            if dictB[key] != value {
                return false
            }
        }

        return true
    }
}
