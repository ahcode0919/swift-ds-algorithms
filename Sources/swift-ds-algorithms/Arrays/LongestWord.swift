// LongestWord.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/15/26.
// Copyright © 2026. All rights reserved.
//

public enum LongestWord {
    public static func longestWord(in sentence: String) -> String? {
        guard sentence.count > 0 else {
            return nil
        }

        let words = sentence.split(separator: " ")
        var longestWord: Substring?

        for word in words {
            if word.count > longestWord?.count ?? 0 {
                longestWord = word
            }
        }

        if let longestWord = longestWord {
            return String(longestWord)
        }
        return nil
    }

    public static func longestWordOnePass(in sentence: String) -> String? {
        guard sentence.count > 0 else {
            return nil
        }
        let arr = Array(sentence)

        var start = 0
        var end = 0
        var longest = 0
        var longestWord = (0, 0)

        for (index, char) in arr.enumerated() {
            if char == " " {
                end = index - 1
                let length = end - start + 1
                if length > longest {
                    longest = length
                    longestWord = (start, end)
                }
                start = index + 1
                end = index + 1
            }
        }
        return String(arr[longestWord.0...longestWord.1])
    }
}
