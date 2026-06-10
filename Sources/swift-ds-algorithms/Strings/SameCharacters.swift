//
//  SameCharacters.swift
//  swift-algorithms
//
//  Created by Aaron on 8/2/17.
//

import Foundation

/// Check that two strings have the same characters (including matching casing)
public class SameCharacters {

    public static func hasSameCharactersWithLoop(_ string1: String, in string2: String) -> Bool {
        if string1.count != string2.count { return false }

        var input = Substring(string1)
        var input2 = Substring(string2)

        while input.count != 0 {
            if let char = input2.popFirst(), let index = input.firstIndex(of: char) {
                input.remove(at: index)
                continue
            }
            return false
        }
        return true
    }

    public static func hasSameCharactersWithSort(_ string1: String, in string2: String) -> Bool {
        if string1.count != string2.count { return false }

        return string1.sorted() == string2.sorted()
    }

    public static func hasSameCharactersWithDictionary(_ string1: String, in string2: String) -> Bool {
        if string1.count != string2.count { return false }

        var input1Dictionary = [Character: Int]()
        var input2Dictionary = [Character: Int]()

        string1.forEach { (char) in
            if var value = input1Dictionary[char] {
                value += 1
            } else {
                input1Dictionary[char] = 1
            }
        }

        string2.forEach { (char) in
            if var value = input2Dictionary[char] {
                value += 1
            } else {
                input2Dictionary[char] = 1
            }
        }

        for pair in input1Dictionary.enumerated() {
            if input2Dictionary[pair.element.key] != pair.element.value { return false }
        }
        return true
    }
}
