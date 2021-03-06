#  Strings

- [Condense Whitespace](#condense-whitespace)
- [Contains](#contains)
- [Find Longest Prefix](#find-longest-prefix)
- [First Not Repeating Character](#first-not-repeating-character)
- [Occurrences of Character](#occurences-of-character)
- [Palindrome](#palindrome)
- [Panagram](#panagram)
- [Remove Duplicates](#remove-duplicates)
- [Reverse Words In Sentence](#reverse-words-in-sentence)
- [Rotated String](#rotated-string)
- [Run Length Encoding](#run-length-encoding)
- [Same Characters](#same-characters)
- [Three Different Letters](#three-different-letters)
- [Unique Characters](#unique-characters)
- [Vowels and Consonants](#vowels-and-consonants)

## Condense Whitespace

Remove the whitespace from a String.

* Example: "Hello World" -> "HelloWorld"

Approach 1: Remove Whitespace using a for loop and a character array

```swift
static func condenseWhitespaceWithLoop(_ text: String) -> String {
    var charArray = [Character]()
    var lastCharWasSpace = false

    for char in text {
        if lastCharWasSpace == false {
            charArray.append(char)
            if char == " " { lastCharWasSpace = true }
        } else {
            if char == " " { continue }
            charArray.append(char)
            lastCharWasSpace = false
        }
    }
    return String(charArray)
}
```

Approach 2: Utilize a regular expression to remove whitespace.

```swift
static func condenseWhitespaceWithRegex(_ text: String) -> String {
    return text.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}
```

Approach 3: Utilize the `split(separator:_)` String function remove whitespace
and then `joined(separator:_)` to concatenate the result

```swift
static func condenseWhitespaceWithSplit(_ text: String) -> String {
    var result = text.split(separator: " ").joined(separator: " ")

    if text.first == " " { result.insert(" ", at: result.startIndex) }
    if text.last == " " { result.append(" ") }
    return result
}
```

## Contains

Check if one string contains another string

Approach 1: Use `range(of:_)` String API function to check for presence of substring

```swift
static func containsWithRange(_ s1: String, contains s2: String) -> Bool {
    if s1.count < s2.count || s1.isEmpty && s2.isEmpty { return false }
    return s1.range(of: s2) != nil
}
```

Approach 2: Use for loop to iterate across strings

```swift
static func containsWithLoop(_ s1: String, contains s2: String) -> Bool {
    if s1.count < s2.count || s1.isEmpty && s2.isEmpty { return false }

    let input1 = Array(s1)
    let input2 = Array(s2)

    var currentIndex = 0

    while currentIndex < input1.count - input2.count {
        var match = true
        for i in 0..<input2.count {
            if input1[currentIndex] != input2[i] {
                currentIndex += 1
                match = false
                break
            }
            currentIndex += 1
        }
        if match { return true }
    }
    return false
}
```

Approach 3: Use native String API `contains(:_)`

```swift
static func containsWithStringAPI(_ s1: String, contains s2: String) -> Bool {
    return s1.contains(s2)
}
```

## Find Longest Prefix

Write a function that accepts a string of words with a similar prefix, separated by spaces,
and returns the longest substring that prefixes all words.

Example: "test tesx texx" -> "te"

```swift
static func findLongestPrefix(_ s1: String) -> String {
    let words = s1.components(separatedBy: " ")

    guard words.count > 1 else { return s1 }

    var prefixEndIndex = words[0].endIndex

    for index in 1..<words.count {
        for position in words[index].indices {
            //Return early if we've iterated to the max index of the last known prefix
            if position > prefixEndIndex { break }

            // Check if characters match
            if words[0][position] == words[index][position] { continue }

            // Set the max end index to the position of our invalid match
            if prefixEndIndex > position {
                prefixEndIndex = position
                break
            }
        }
    }
    return String(words[0].prefix(upTo: prefixEndIndex))
}
```

## First Not Repeating Character

Given a string s, find and return the first instance of a non-repeating character in it. If there is no such character, return '_'.

```swift
class FirstNotRepeatingCharacter {
    
    static func firstWithDictionary(_ string: String) -> Character? {
        var charCount = Dictionary<Character, Int>(minimumCapacity: 26)
        
        for char in string {
            charCount[char] = (charCount[char] ?? 0) + 1
        }
        
        for char in string {
            if charCount[char] == 1 {
                return char
            }
        }
        
        return nil
    }
}
```

## Occurrences of Character

Count the number of times a character occurs in a String

Approach 1 - Use filter to isolate occurrences

```swift
static func countOccurancesWithFilter(_ char: Character, in input: String) -> Int {
        return input.filter { (inputChar) -> Bool in return inputChar == char }.count
}
```

Approach 2 - Use a for loop to iterate over the input string

```swift
static func countOccurrencesWithLoop(_ input: Character, in text: String) -> Int {
    var count = 0

    for char in text {
        if char == input { count += 1 }
    }
    return count
}
```

Approach 3 - Use the reduce function to iterate over the string and count occurrences

```swift
static func countOccurrencesWithReduce(_ input: Character, in text: String) -> Int {
    return text.reduce(0) { (result, char) -> Int in
        return char == input ? result + 1 : result
    }
}
```

## Palindrome

Check that a string is the same forwards and backwards, Ex: mom, dad, etc.

Approach 1 - `String.reversed()`:

```swift
/// String.reversed() - O(1)
static func isPalindromeWithReverse(_ input: String) -> Bool {
    if input.count < 2 {
        return true
    }
    let lowercasedInput = input.lowercased()
    return lowercasedInput == String(lowercasedInput.reversed())
}
```

Approach 2 - Array:

```swift
static func isPalindromeWithArray(_ input: String) -> Bool {
    var charArray = Array(input.lowercased())

    while charArray.count > 1, let last = charArray.popLast() {
        if last != charArray.remove(at: 0) {
            return false
        }
    }
    return true
}
```

## Panagram

Check if a String is a Pangram (Contains every letter of the alphabet)

Approach 1 - Set:

```swift
static func isPangramWithSet(_ s1: String) -> Bool {
    let s1Set = Set(s1.lowercased())
    return s1Set.count == s1.count
}
```

Approach 2 - Loop/Contains:

```swift
private static let alphabet = "abcdefghijklmnopqrstuvwxyz"

static func isPangramWithLoop(_ s1: String) -> Bool {
    let lowercased = s1.lowercased()

    for letter in alphabet {
        if lowercased.contains(letter) {
            continue
        }
        return false
    }
    return true
}
```

## Remove Duplicates

Remove duplicate characters from a String

Approach 1 - `NSOrderedSet`:

```swift
static func removeDuplicatesWithNSOrderedSet(from input: String) -> String {
    let set = NSOrderedSet(array: Array(input))
    if let array = set.array as? [Character] {
        return String(array)
    }
    return input
}
```

Approach 2 - Set / Filter:

```swift
static func removeDuplicatesWithSetAndFilter(from input: String) -> String {
    var duplicateSet = Set<Character>()
    var inputArray = Array(input)
    inputArray = inputArray.filter { (char) -> Bool in
        if duplicateSet.contains(char) {
            return false
        }
        duplicateSet.insert(char)
        return true
    }
    return String(inputArray)
}
```

Approach 3 - Filter:

```swift
static func removeDuplicatesWithFilter(from input: String) -> String {
    var used = [Character]()
    let uniqueChars = input.filter { (char) -> Bool in
        if !used.contains(char) {
            used.append(char)
            return true
        }
        return false
    }
    return String(uniqueChars)
}
```

Approach 4 - Dictionary / Filter:

```swift
static func removeDuplicatesWithDictionaryAndFilter(from input: String) -> String {
    var uniqueDictionary = Dictionary<Character, Bool>()
    let output = input.filter { (char) -> Bool in
        return uniqueDictionary.updateValue(true, forKey: char) == nil
    }
    return String(output)
}
```

## Reverse Words In Sentence

Reverse the words in a sentence

Example: "foo bar baz" -> "oof rab zab"

```swift
class ReverseWordsInSentence {
    static func reverse(_ sentence: String) -> String {
        let words = sentence.split(separator: " ")
        let reversedWords = words.map { $0.reversed() }
        return String(reversedWords.joined(separator: " "))
    }
}
```

## Rotated String

Checks that a string is "Rotated" A string rotation is when you take a string,
remove some letters from its end, then append them to the front. For example,
“swift” rotated by two characters would be “ftswi”.

Approach 1 - Concatenate the original string to itself:
"swiftswift" contains "ftswi" -> true

```swift
static func isRotatedStringWithAddition(_ original: String, rotated: String) -> Bool {
    guard original.count == rotated.count else { return false }

    return (original + original).contains(rotated)
}
```

Approach 2 - Rotate through string until a match is found:

```swift
static func isRotatedStringWithLoop(_ original: String, rotated: String) -> Bool {
    guard original.count == rotated.count else { return false }

    var tempString = original
    for _ in 0..<original.count {
        tempString.insert(tempString.last!, at: tempString.startIndex)
        tempString = String(tempString.dropLast())
        if tempString == rotated { return true }
    }
    return false
}
```

## Run Length Encoding

Perform basic run length encoding on a input string

Example: `"aaabbcddd"` -> `a3b2cd3`

```swift
static func runLengthEncoding(_ input: String) -> String {
    if input.isEmpty {
        return ""
    }
    var currentCharacter: Character?
    var count = 0
    var compressedString = ""
    
    for index in input.indices {
        if input[index] == currentCharacter {
            count += 1
        } else {
            if let current = currentCharacter {
                let normalizedCount = count == 1 ? "": "\(count)"
                compressedString += "\(current)\(normalizedCount)"
            }
            count = 1
            currentCharacter = input[index]
        }
    }
    
    if let character = currentCharacter {
        let normalizedCount = count == 1 ? "": "\(count)"
        compressedString += "\(character)\(normalizedCount)"
    }
    
    return compressedString
}
```

## Same Characters

Check that two strings have the same characters (including matching casing)

Approach 1 - Loop:

```swift
static func hasSameCharactersWithLoop(_ s1: String, in s2: String) -> Bool {
    if s1.count != s2.count { return false }

    var input = Substring(s1)
    var input2 = Substring(s2)

    while input.count != 0 {
        if let char = input2.popFirst(), let index = input.index(of: char) {
            input.remove(at: index)
            continue
        }
        return false
    }
    return true
}
```

Approach 2 - Sort:

```swift
static func hasSameCharactersWithSort(_ s1: String, in s2: String) -> Bool {
    if s1.count != s2.count { return false }

    return s1.sorted() == s2.sorted()
}
```

Approach 3 - Dictionary:

```swift
static func hasSameCharactersWithDictionary(_ s1: String, in s2: String) -> Bool {
    if s1.count != s2.count { return false }

    var input1Dictionary = [Character: Int]()
    var input2Dictionary = [Character: Int]()

    s1.forEach { (char) in
        if var value = input1Dictionary[char] {
            value += 1
        } else {
            input1Dictionary[char] = 1
        }
    }

    s2.forEach { (char) in
        if var value = input2Dictionary[char] {
            value += 1
        } else {
            input2Dictionary[char] = 1
        }
    }

    for pair in input1Dictionary.enumerated() {
        if input2Dictionary[pair.element.key] != pair.element.value { return false }
    }
    return true
}
```

## Three Different Letters

Write a function that accepts two strings, and returns true if they are identical in length
but have no more than three different letters, taking case and string order into account.

```swift
static func threeDifferentLetters(s1: String, s2: String) -> Bool {
    guard s1.count == s2.count else { return false }
    var count = 0

    for index in s1.indices {
        if s1[index] == s2[index] { continue }
        if count < 3 {
            count += 1
            continue
        }
        return false
    }
    return true
}
```

## Unique Characters

Check if a string only consists of unique characters

Approach 1 - Set:

```swift
static func uniqueCharactersWithSet(_ input: String) -> Bool {
    if input.count < 2 { return true }

    return input.count == Set(input).count
}
```

Approach 2 - Loop:

```swift
static func uniqueCharactersWithLoop(_ input: String) -> Bool {
    if input.count < 2 { return true }

    var inputSet = Set<Character>()

    for char in input {
        if inputSet.contains(char) { return false }
        inputSet.insert(char)
    }
    return true
}
```

## Vowels and Consonants

Count the number of vowels and consonants in a String

```swift
static let vowels = "aeiou"
static let consonants = "bcdfghjklmnpqrstvwxyz"

static func vowelsAndConsonantsForEach(_ s1: String) -> (vowels: Int, consonants: Int) {
    let normalizedString = s1.lowercased()
    var count: (vowels: Int, consonants: Int) = (vowels: 0, consonants: 0)
    normalizedString.forEach {
        if vowels.contains($0) {
            count.vowels += 1
        } else if consonants.contains($0) {
            count.consonants += 1
        }
    }
    return count
}
```
