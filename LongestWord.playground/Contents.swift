// LongestWord(sen) take the sen parameter being passed and return the longest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. Words may also contain numbers, for example "Hello world123 567"

import Foundation

func LongestWord(_ sen: String) -> String {
    let goodSen = sen.components(separatedBy: .punctuationCharacters).joined(separator: "")
    let words = goodSen.components(separatedBy: " ")
    
    var result = ""
    for word in words {
        if word.count > result.count {
            result = word
        }
    }
    
    return result
}

print(LongestWord("Hello world123 567"))
