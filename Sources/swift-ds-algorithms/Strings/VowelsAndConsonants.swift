//
//  VowelsAndConsonants.swift
//  swift-algorithms
//
//  Created by Aaron on 5/17/18.
//

import Foundation

/// Count the number of vowels and consonants in a String
public class VowelsAndConsonants {
    private static let vowels = "aeiou"
    private static let consonants = "bcdfghjklmnpqrstvwxyz"

    public static func vowelsAndConsonantsForEach(_ string: String) -> (vowels: Int, consonants: Int) {
        let normalizedString = string.lowercased()
        var count: (vowels: Int, consonants: Int) = (vowels: 0, consonants: 0)
        normalizedString.forEach {
            if vowels.contains($0) {
                count.vowels += 1
            } else if consonants.contains($0) {
                count.consonants += 1
            }
        }
        return count
    }
}
