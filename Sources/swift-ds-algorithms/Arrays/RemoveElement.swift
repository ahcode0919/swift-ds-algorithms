//
//  RemoveElement.swift
//  swift-ds-algorithms
//
//  Created by Aaron Hinton on 3/19/26.
//

public class RemoveElement {
    /// Remove the element from the array in-place and return the new length of the array
    public static func removeElement(from arr: inout [Int], value: Int) -> Int {
        var p1 = 0
        var p2 = 0
        var length = arr.count
        
        while p1 < arr.count, p2 < arr.count {
            if arr[p2] == value {
                length -= 1
            } else {
                arr[p1] = arr[p2]
                p1 += 1
            }
            p2 += 1
        }
        
        return length
    }
}
