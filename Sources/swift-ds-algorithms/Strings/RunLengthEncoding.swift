//
//  RunLengthEncoding.swift
//  swift-algorithms
//
//  Created by Aaron on 8/25/20.
//

import Foundation

/// Perform basic run length encoding on an input string.
///
/// Example: `"aaabbcddd"` -> `a3b2cd3`
public class RunLengthEncoding {
    public static func runLengthEncoding(_ input: String) -> String {
        if input.isEmpty {
            return ""
        }
        var currentCharacter: Character?
        var count = 0
        var compressedString = ""

        for index in input.indices {
            if input[index] == currentCharacter {
                count += 1
            } else {
                if let current = currentCharacter {
                    let normalizedCount = count == 1 ? "": "\(count)"
                    compressedString += "\(current)\(normalizedCount)"
                }
                count = 1
                currentCharacter = input[index]
            }
        }

        if let character = currentCharacter {
            let normalizedCount = count == 1 ? "": "\(count)"
            compressedString += "\(character)\(normalizedCount)"
        }

        return compressedString
    }
}
