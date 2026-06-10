//
//  ThreeDifferentLetters.swift
//  swift-algorithms
//
//  Created by Aaron on 6/7/18.
//

import Foundation

/// Write a function that accepts two strings, and returns true if they are identical in length
/// but have no more than three different letters, taking case and string order into account.
public class ThreeDifferentLetters {
    public static func threeDifferentLetters(string1: String, string2: String) -> Bool {
        guard string1.count == string2.count else {
            return false
        }
        var count = 0

        for index in string1.indices {
            if string1[index] == string2[index] {
                continue
            }
            if count < 3 {
                count += 1
                continue
            }
            return false
        }
        return true
    }
}
