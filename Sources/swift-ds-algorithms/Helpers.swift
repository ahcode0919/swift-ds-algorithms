//
//  Helpers.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/1/17.
//

import Foundation
import GameKit

public class Helpers {
    public enum HelperError: Error, CustomStringConvertible {
        case invalidInput(message: String)

        public var description: String {
            switch self {
            case .invalidInput(message: let message):
                return message
            }
        }
    }

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

    public static func generateLinkedList(ofLength length: Int) throws -> SinglyLinkedListNode<Int> {
        guard length > 0 else {
            throw HelperError.invalidInput(message: "Cannot generate a linked list with a length of 0 or less")
        }
        let dummyHead = SinglyLinkedListNode(value: 0)
        var last = dummyHead

        for index in 0..<length {
            let node = SinglyLinkedListNode(value: index)
            last.next = node
            last = node
        }

        guard let head = dummyHead.next else {
            throw HelperError.invalidInput(message: "Failed to generate a linked list")
        }

        return head
    }

    public static func linkedListToArray<T>(head: SinglyLinkedListNode<T>?) -> [T] {
        var result: [T] = []
        var current = head

        while let node = current {
            result.append(node.value)
            current = node.next
        }
        return result
    }
}
