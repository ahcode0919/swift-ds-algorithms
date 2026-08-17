// NumberGenerator.swift
// swift-ds-algorithms
//
// Created by Aaron on 8/17/26.
// Copyright © 2026. All rights reserved.
//

public class IntegerCounter {
    private var current: Int

    public init(start: Int = 0) {
        self.current = start
    }

    public func next() -> Int {
        defer { current += 1 }
        return current
    }
}
