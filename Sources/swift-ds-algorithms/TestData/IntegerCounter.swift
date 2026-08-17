// NumberGenerator.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

/// Generates a sequence of incrementing integers, useful for assigning unique test values.
public class IntegerCounter {
    private var current: Int

    public init(start: Int = 0) {
        self.current = start
    }

    /// Returns the current value and increments the counter.
    public func next() -> Int {
        defer { current += 1 }
        return current
    }
}
