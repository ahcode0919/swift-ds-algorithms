//
//  FirstNotRepeatingCharacter.swift
//  swift-algorithms
//
//  Created by Aaron on 3/24/2020.
//

import Foundation

public class FirstNotRepeatingCharacter {

    public static func firstWithDictionary(_ string: String) -> Character? {
        var charCount = [Character: Int](minimumCapacity: 26)

        for char in string {
            charCount[char] = (charCount[char] ?? 0) + 1
        }

        for char in string {
            if charCount[char] == 1 {
                return char
            }
        }

        return "_"
    }
}
