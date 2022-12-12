import UIKit
//:String Literals
let someString = "Some string literal value"
//:Multiline String Literals
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print(quotation)
//:
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""
//:
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(someString)
//:
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
print(lineBreaks)
//:Special Characters in String Literals
/*
 The escaped special characters \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation mark) and \' (single quotation mark)

 An arbitrary Unicode scalar value, written as \u{n}, where n is a 1–8 digit hexadecimal number (Unicode is discussed in Unicode below)
 */
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496
//:
//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""

//:Extended String Delimiters
let a = #"Line 1\nLine 2"#
print(a)

let b = #"Line 1\#nLine 2"#
print(b)

let c = ###"Line1\###nLine2"###
print(c)
//:
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
//:Initializing an Empty String
var emptyString = "" // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other
//:
if emptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"
//: String Mutability
var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"


let constantString = "Highlander"
// constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified
//:Working with Characters
for character in "Dog!🐶" {
    print(character)
}
//:
let exclamationMark: Character = "!"
//:
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
//: Concatenating Strings and Characters
let string1 = "Hello"
let string2 = " there"
var welcome = string1 + string2
//:
var instruction = "look over"
instruction += string2
//:
let exclamationMark2: Character = "!"
welcome.append(exclamationMark2)
//:
//exclamationMark.append(welcome)
//:
let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)
// Prints two lines:
// one
// twothree


let goodStart = """
one
two

"""
print(goodStart + end)
// Prints three lines:
// one
// two
// three
//:String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
//:
print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(#"6 times 7 is \#(6 * 7)."#)

//:
let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"
//:
let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
//:
let enclosedEAcute: Character = "\u{E9}\u{20DD}"
//:
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
//:Counting Characters
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// Prints "unusualMenagerie has 40 characters"
//:
var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4"
