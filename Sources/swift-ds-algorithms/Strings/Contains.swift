//
//  Contains.swift
//  swift-algorithms
//
//  Created by Aaron on 8/2/17.
//

import Foundation

/// Check if one string contains another
public class Contains {

    public static func containsIgnoreCaseWithRange(_ string1: String, contains string2: String) -> Bool {
        if string1.count < string2.count || string1.isEmpty && string2.isEmpty {
            return false
        }
        return string1.range(of: string2) != nil
    }

    public static func containsIgnoreCaseWithLoop(_ string1: String, contains string2: String) -> Bool {
        if string1.count < string2.count || string1.isEmpty && string2.isEmpty {
            return false
        }

        let input1 = Array(string1)
        let input2 = Array(string2)

        var currentIndex = 0

        while currentIndex < input1.count - input2.count {
            var match = true
            for index in 0..<input2.count {
                if input1[currentIndex] != input2[index] {
                    currentIndex += 1
                    match = false
                    break
                }
                currentIndex += 1
            }
            if match {
                return true
            }
        }
        return false
    }

    public static func containsWithStringAPI(_ string1: String, contains string2: String) -> Bool {
        return string1.contains(string2)
    }
}
