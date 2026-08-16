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
            "(": ")",
            "[": "]",
            "{": "}"
        ]

        for char in input {
            if brackets[char] != nil {
                stack.push(value: char)
            } else {
                guard let openBracket = stack.pop() else {
                    return false
                }
                if brackets[openBracket] != char {
                    return false
                }
            }
        }

        return stack.empty()
    }
}
