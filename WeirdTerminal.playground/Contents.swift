import Foundation

//Problem Statement :
//Here is a weird problem in Susan’s terminal. He can not write more than two words each line, if she writes more than two, it takes only 2 words and the rest are not taken. So she needs to use enter and put the rest in a new line. For a given paragraph, how many lines are needed to be written in Susan’s terminal?
//
//Input Format:
//
//A string as the text to input in the terminal
//
//Output Format:
//
//Number of lines written.
//
//Constraints:
//
//Number of words <=10^7
//
//Sample Input:
//
//How long do you have to sit dear ?
//
//Sample Output:
//
//4
//
//Explanation:
//
//The writing will be:
//
//How long
//
//Do you
//
//Have to
//
//Sit dear ?
                                                                                                    
func linesNeeded(for paragraph: String) -> Int {
    var lines = 0
    var currentLineWords = 0
    for (index,charecter) in paragraph.enumerated() {
        if charecter == " " {
            if currentLineWords == 2 {
                lines += 1
                currentLineWords = 0
            }
            currentLineWords += 1
        }
    }
    
    // Add remaining words to line count (if any)
    lines += currentLineWords > 0 ? 1 : 0
    
    return lines
}

// Print number of lines needed
let inputString = "How long do you have to sit dear ?"
print(linesNeeded(for: inputString))
