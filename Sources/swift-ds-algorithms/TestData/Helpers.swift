//
//  Helpers.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/1/17.
//

import Foundation
import GameKit

/// Miscellaneous test helpers.
public enum Helpers {
    public enum HelperError: Error, CustomStringConvertible {
        case invalidInput(message: String)

        public var description: String {
            switch self {
            case .invalidInput(message: let message):
                return message
            }
        }
    }

    /// Generates a random string of the given length using letters, digits, and spaces.
    public static func generateRandomString(ofLength length: Int = 1000000) -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 "
        let charCount = characters.count
        var wordArray = [Character](repeating: "0", count: length)
        let randomGenerator = GKRandomSource.sharedRandom()

        for index in 0..<length {
            let charIndex = characters.index(characters.startIndex,
                                             offsetBy: randomGenerator.nextInt(upperBound: charCount))
            wordArray[index] = characters[charIndex]
        }
        return String(wordArray)
    }
}
