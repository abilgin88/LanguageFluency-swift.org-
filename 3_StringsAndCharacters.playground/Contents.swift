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
//:Accessing and Modifying a String
let greeting = "Guten Tag!"
greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(after: greeting.startIndex)]

greeting[greeting.index(after: greeting.index(after: greeting.startIndex))]

let index = greeting.index(greeting.startIndex, offsetBy: 8)
greeting[index]

//greeting[greeting.endIndex]

//greeting.index(after: greeting.endIndex)

for index in greeting.indices {
    print("\(greeting[index])", terminator: " ")
}

var myName = "Abdullah"
print(myName.startIndex)
print(myName.endIndex)

var myNameEmpty = " "
print(myNameEmpty.startIndex)
print(myNameEmpty.endIndex)

let greet = "Hello"
greet[greet.startIndex]
greet[greet.index(before: greet.endIndex)]
greet[greet.index(after: greet.startIndex)]

let index2 = greet.index(greet.startIndex, offsetBy: 2)
print(index2)

//greet[greet.endIndex]
//greet.index(after: greet.endIndex)

for index in greet.indices {
    print(index)
    print("\(greet[index])", terminator: " ")
}

var welcome2 = "hello"
welcome2.insert("!", at: welcome2.endIndex)
//welcome2.insert("!", at: welcome2.startIndex)

//welcome2.insert(contentsOf: " there", at: welcome2.endIndex)

welcome2.insert(contentsOf: " there", at: welcome2.index(before: welcome2.endIndex))

welcome2.remove(at: welcome2.index(before: welcome2.endIndex))
print(welcome2)

let range = welcome2.index(welcome2.endIndex, offsetBy: -6)..<welcome2.endIndex
print(range)

welcome2.removeSubrange(range)
print(welcome2)

let greeting2 = "Hello, World"
let index3 = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
let beginning = greeting2[..<index3]
let newString = String(beginning)
//:Comparing Strings
let quotation2 = "We're a lot alike, you and I."
let sameQuotation2 = "We're a lot alike, you and I."

if quotation2 == sameQuotation2 {
    print("These two strings are considered equal")

}
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}

//:Prefix and Suffix Equality
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

//:Unicode Representations of Strings
let dogString = "Dog‼🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
