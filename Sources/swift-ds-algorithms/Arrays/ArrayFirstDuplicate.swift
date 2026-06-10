//
//  ArrayFirstDuplicate.swift
//  swift-algorithms
//
//  Created by Aaron on 7/10/18.
//

import Foundation

public class ArrayFirstDuplicate {

    public static func firstDuplicate(_ array: [Int]) -> Int? {
        var uniqueNums = Set<Int>()

        for (index, number) in array.enumerated() {
            if uniqueNums.contains(number) {
                return index
            }
            uniqueNums.insert(number)
        }
        return nil
    }
}
