//
//  ReverseWordsInSentence.swift
//  swift-algorithms
//
//  Created by Aaron on 1/9/21.
//

import Foundation

/// Reverse the words in a sentence.
///
/// Example: "foo bar baz" -> "oof rab zab"
public class ReverseWordsInSentence {
    public static func reverse(_ sentence: String) -> String {
        let words = sentence.split(separator: " ")
        let reversedWords = words.map { $0.reversed() }
        return String(reversedWords.joined(separator: " "))
    }
}
