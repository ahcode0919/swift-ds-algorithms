//
//  CondenseWhitespace.swift
//  swift-algorithms
//
//  Created by Aaron on 8/3/17.
//

import Foundation

/// Remove the whitespace from a String.
///
/// Example: "Hello World" -> "HelloWorld"
public class CondenseWhitespace {
    /// Approach 1: Remove whitespace using a for loop and a character array.
    public static func condenseWhitespaceWithLoop(_ text: String) -> String {
        var charArray = [Character]()
        var lastCharWasSpace = false

        for char in text {
            if lastCharWasSpace == false {
                charArray.append(char)
                if char == " " {
                    lastCharWasSpace = true
                }
            } else {
                if char == " " {
                    continue
                }
                charArray.append(char)
                lastCharWasSpace = false
            }
        }
        return String(charArray)
    }

    /// Approach 2: Utilize a regular expression to remove whitespace.
    public static func condenseWhitespaceWithRegex(_ text: String) -> String {
        return text.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
    }

    /// Approach 3: Utilize the `split(separator:_)` String function to remove whitespace
    /// and then `joined(separator:_)` to concatenate the result.
    public static func condenseWhitespaceWithSplit(_ text: String) -> String {
        var result = text.split(separator: " ").joined(separator: " ")
        if text.first == " " {
            result.insert(" ", at: result.startIndex)
        }
        if text.last == " " {
            result.append(" ")
        }
        return result
    }
}
