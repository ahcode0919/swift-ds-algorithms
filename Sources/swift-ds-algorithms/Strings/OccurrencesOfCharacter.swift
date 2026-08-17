//
//  OccurancesOfCharacter.swift
//  swift-algorithms
//
//  Created by Aaron on 10/13/17.
//

import Foundation

/// Count the number of times a character occurs in a String
public class OccurrencesOfCharacter {
    /// Approach 1: Use filter to isolate occurrences.
    public static func countOccurancesWithFilter(_ char: Character, in input: String) -> Int {
        return input.filter { (inputChar) -> Bool in
            return inputChar == char
        }.count
    }

    /// Approach 2: Use a for loop to iterate over the input string.
    public static func countOccurrencesWithLoop(_ input: Character, in text: String) -> Int {
        var count = 0

        for char in text {
            if char == input {
                count += 1
            }
        }
        return count
    }

    /// Approach 3: Use the reduce function to iterate over the string and count occurrences.
    public static func countOccurrencesWithReduce(_ input: Character, in text: String) -> Int {
        return text.reduce(0) { (result, char) -> Int in
            return char == input ? result + 1 : result
        }
    }
}
