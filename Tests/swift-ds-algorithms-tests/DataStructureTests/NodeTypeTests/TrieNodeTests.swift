//
//  TrieNodeTests.swift
//  swift-ds-algorithms
//
//  Created by Aaron on 4/22/26.
//

import swift_ds_algorithms
import Testing

struct TrieNodeTests {
    @Test
    func testInitializer() {
        let node = TrieNode(value: 10)
        #expect(node.value == 10)
        #expect(node.children.isEmpty)
    }
}
