//
//  CircularQueue.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/21/26.
//

public class CircularQueue<T> {
    private var storage: [T?]

    public private(set) var count: Int = 0
    public private(set) var capacity: Int

    private var head: Int = 0

    public init(capacity: Int = 16) {
        self.capacity = capacity
        self.storage = [T?](repeating: nil, count: capacity)
    }

    public func enqueue(_ value: T) {
        if count == capacity {
            self.capacity *= 2
            self.resize(capacity: capacity)
        }

        if count == 0 {
            count = 1
            storage[head] = value
        } else {
            count += 1
            let index = (head + (count - 1)) % capacity
            storage[index] = value
        }
    }

    public func empty() -> Bool {
        return count == 0
    }

    public func deque() -> T? {
        guard count > 0 else {
            return nil
        }

        let value = storage[head]
        storage[head] = nil
        head += 1
        count -= 1

        return value
    }

    public func resize(capacity: Int) {
        if capacity < self.capacity {
            return
        }
        var newArray = [T?](repeating: nil, count: capacity)
        for i in 0..<storage.count {
            newArray[i] = storage[i]
        }
        self.capacity = capacity
        storage = newArray
    }
}
