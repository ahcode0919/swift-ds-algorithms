//
//  ReverseSomeChars.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 6/10/26.
//

public enum ReverseSomeChars {
    /// Reverse the characters in the string that are contained in the `chars` array
    public static func reverseSomeChars(str: String, chars: [Character]) -> String {
        let char_set: Set<Character> = Set(chars)
        var reversed: [Character] = []
        let stack: Stack<Character> = Stack()

        for char in str {
            if char_set.contains(char) {
                stack.push(value: char)
            }
        }

        for char in str {
            if char_set.contains(char), let match = stack.pop() {
                reversed.append(match)
            } else {
                reversed.append(char)
            }
        }

        return String(reversed)
    }
}
