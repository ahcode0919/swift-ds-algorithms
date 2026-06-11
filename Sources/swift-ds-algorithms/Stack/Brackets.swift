//
//  Brackets.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 6/10/26.
//

public enum Brackets {
    public static func validBrackets(_ input: String) -> Bool {
        let stack = Stack<Character>()
        let brackets: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]

        for char in input {
            if brackets[char] == nil {
                stack.push(value: char)
            } else {
                if stack.peek() == brackets[char] {
                    _ = stack.pop()
                } else {
                    return false
                }
            }
        }

        return stack.empty()
    }
}
