//
//  ReverseWordsInSentence.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 1/9/21.
//  Copyright © 2021 No Name Software. All rights reserved.
//

import Foundation

public class ReverseWordsInSentence {
    public static func reverse(_ sentence: String) -> String {
        let words = sentence.split(separator: " ")
        let reversedWords = words.map { $0.reversed() }
        return String(reversedWords.joined(separator: " "))
    }
}

