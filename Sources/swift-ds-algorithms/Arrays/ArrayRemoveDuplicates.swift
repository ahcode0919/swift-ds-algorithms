//
//  RemoveDuplicates.swift
//  swift-algorithms
//
//  Created by Aaron on 9/27/17.
//

import Foundation

/// Find and remove duplicate elements from an Array.
public enum ArrayRemoveDuplicates {
    /// Uses an `NSOrderedSet` to maintain order and return unique elements.
    public static func removeDuplicatesWithNSOrderedSet<T>(_ array: [T]) -> [T] {
        let set = NSOrderedSet(array: array)
        guard let newArray = set.array as? [T] else {
            return array
        }
        return newArray
    }

    /// Uses a `Set` to track duplicates as it builds a new array in-order.
    public static func removeDuplicatesWithSet<T: Hashable & Equatable>(_ array: [T]) -> [T] {
        var uniqueValues: [T] = []
        var seen = Set<T>()
        for value in array {
            if seen.contains(value) {
                continue
            } else {
                uniqueValues.append(value)
                seen.insert(value)
            }
        }
        return uniqueValues
    }

    /// Uses `reduce(into:_)` to iterate through the array. This approach is less efficient
    /// due to the time complexity of the inner `contains`.
    public static func removeDuplicatesWithReduce<T: Equatable>(_ array: [T]) -> [T] {
        return array.reduce(into: []) { (results, value) in
            let elementPresent = results.contains { (element) -> Bool in
                element == value
            }
            if !elementPresent {
                results.append(value)
            }
        }
    }
}
