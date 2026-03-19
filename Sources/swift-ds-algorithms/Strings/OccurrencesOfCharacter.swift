//
//  OccurancesOfCharacter.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 10/13/17.
//  Copyright © 2017 No Name Software. All rights reserved.
//

import Foundation

/// Count the number of times a character occurs in a String
public class OccurrencesOfCharacter {
    public static func countOccurancesWithFilter(_ char: Character, in input: String) -> Int {
        return input.filter { (inputChar) -> Bool in
            return inputChar == char
        }.count
    }
    
    public static func countOccurrencesWithLoop(_ input: Character, in text: String) -> Int {
        var count = 0
        
        for char in text {
            if char == input {
                count += 1
            }
        }
        return count
    }
    
    public static func countOccurrencesWithReduce(_ input: Character, in text: String) -> Int {
        return text.reduce(0) { (result, char) -> Int in
            return char == input ? result + 1 : result
        }
    }
}
