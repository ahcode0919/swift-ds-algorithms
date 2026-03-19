//
//  Pangram.swift
//  swift-algorithms
//
//  Created by Aaron Hinton on 5/17/18.
//  Copyright © 2018 No Name Software. All rights reserved.
//

import Foundation

/// Check if a String is a Pangram (Contains every letter of the alphabet)
public class Pangram {
    private static let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    public static func isPangramWithSet(_ s1: String) -> Bool {
        let s1Set = Set(s1.lowercased())
        return s1Set.count == s1.count
    }
    
    public static func isPangramWithLoop(_ s1: String) -> Bool {
        let lowercased = s1.lowercased()
        
        for letter in alphabet {
            if lowercased.contains(letter) {
                continue
            }
            return false
        }
        return true
    }
}
