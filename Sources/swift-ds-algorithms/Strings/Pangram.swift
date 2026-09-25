//
//  Pangram.swift
//  swift-algorithms
//
//  Created by Aaron on 5/17/18.
//

import Foundation

/// Check if a String is a Pangram (Contains every letter of the alphabet)
public class Pangram {
    private static let alphabetSet = Set("abcdefghijklmnopqrstuvwxyz")

    /// Approach 1 - Set
    public static func isPangramWithSet(_ string1: String) -> Bool {
        return Set(string1.lowercased()) == alphabetSet
    }

    /// Approach 2 - Loop/Contains
    public static func isPangramWithLoop(_ string1: String) -> Bool {
        let lowercased = string1.lowercased()

        for letter in lowercased {
            if alphabetSet.contains(letter) == false {
                return false
            }
        }
        return true
    }
}
