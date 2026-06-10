//
//  Pangram.swift
//  swift-algorithms
//
//  Created by Aaron on 5/17/18.
//

import Foundation

/// Check if a String is a Pangram (Contains every letter of the alphabet)
public class Pangram {
    private static let alphabet = "abcdefghijklmnopqrstuvwxyz"

    public static func isPangramWithSet(_ string1: String) -> Bool {
        let string1Set = Set(string1.lowercased())
        return string1Set.count == string1.count
    }

    public static func isPangramWithLoop(_ string1: String) -> Bool {
        let lowercased = string1.lowercased()

        for letter in alphabet {
            if lowercased.contains(letter) {
                continue
            }
            return false
        }
        return true
    }
}
