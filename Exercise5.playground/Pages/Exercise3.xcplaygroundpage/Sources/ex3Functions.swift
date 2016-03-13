import Foundation

public func letterToNumber(letter: Character) -> Int{
    var count = 0
    for char in "abcdefghijklmnopqrstuvwxyz".characters {
        count++
        if (letter == char){
            break
        }
    }
    return count
}

public func numberToLetter(number: Int) -> String{
    var letter = ""
    var count = 0
    for char in "abcdefghijklmnopqrstuvwxyz".characters {
        letter = String(char)
        if (++count == number){
            break
        }
    }
    return letter
}

public func encrypt(message: String, offset: Int) -> String{
    
    var encrypted = ""
    
    for char in message.characters
    {
        if !(String(char).uppercaseString == String(char).lowercaseString) // is it a letter?
        {
            if (String(char) == String(char).lowercaseString) // Lower case?
            {
                encrypted += numberToLetter(((letterToNumber(char)+offset)%26))
            } else { // Upper case?
                encrypted += numberToLetter((letterToNumber(Character(String(char).lowercaseString))+offset)%26).uppercaseString
            }
        } else {
            encrypted += String(char)
        }
    }
    return encrypted
}


public func decrypt(message: String, offset: Int) -> String{
    return encrypt(message, offset: (26-offset))
}