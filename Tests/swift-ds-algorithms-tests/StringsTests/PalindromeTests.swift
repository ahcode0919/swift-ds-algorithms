//
//  PalindromeTests.swift
//  swift-algorithmsTests
//
//  Created by Aaron on 8/2/17.
//

import Testing
@testable import swift_ds_algorithms

struct PalindromeTests {

    @Test func testPalindromeWithReverse() {
        #expect(Palindrome.isPalindromeWithReverse("rotAtoR"))
        #expect(Palindrome.isPalindromeWithReverse("aba"))
        #expect(Palindrome.isPalindromeWithReverse("aabbaa"))
        #expect(Palindrome.isPalindromeWithReverse("AAAAAA"))
        #expect(Palindrome.isPalindromeWithReverse("Hello") == false)
    }

    @Test func testPalindromeWithArray() {
        #expect(Palindrome.isPalindromeWithArray("rotAtoR"))
        #expect(Palindrome.isPalindromeWithArray("aba"))
        #expect(Palindrome.isPalindromeWithArray("aabbaa"))
        #expect(Palindrome.isPalindromeWithArray("AAAAAA"))
        #expect(Palindrome.isPalindromeWithArray("Hello") == false)
    }

}
