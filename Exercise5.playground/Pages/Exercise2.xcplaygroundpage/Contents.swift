//: Playground - noun: a place where people can play
import UIKit
/*:
**Exercise:** Get Acquainted. Get a few properties of each person in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
>> **Example Output:**
* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
* `Other students in my class are Annie, Sam, Jack, Hudson, Oliver.`
* `Oliver dropped this class.` (**use the second string to pull out the last persons name.**)
* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second string and append another person.**)
* `Jack and Hudson are in the class.` (**use the second string to pull out third and fourth person.**)
*/

/*
Duane Soisson - dsoisson@live.com
Scott Mink - scott@internetfun.com
Chidi Emeh - chidiemeh184@gmail.com
George Gebretensai - gebretensai90@gmail.com
Tareq Khalaf - tareqkhalaf.85@gmail.com
Jorge Vallejos - jvallejo@cscc.edu
Peter Carswell - pcarswel@cscc.edu
*/


func findFirstname(name: String) -> String {
    let fullNameArr = name.componentsSeparatedByString(" ")
    return fullNameArr[0]
}


let me = (name: "Scott Mink", email: "scott@internetfun.com")
let names = ["Duane Soisson", "Chidi Emeh", "George Gebretensai", "Tareq Khalaf", "Jorge Vallejos", "Peter Carswell"]
let emails = ["dsoisson@live.com", "chidiemeh184@gmail.com", "gebretensai90@gmail.com", "tareqkhalaf.85@gmail.com", "jvallejo@cscc.edu", "pcarswel@cscc.edu"]

print("My name is \(me.name), my email is \(me.email)")

//for index in 0...5 {
var otherStudents = "";
for name in names{
    if otherStudents.characters.count > 0
    {
        otherStudents += ", "
    }
    otherStudents += findFirstname(name)
}
let lastPersonLength = findFirstname(names.last!).characters.count

print ("Other students in my class are " + otherStudents + ".")
print (otherStudents.substringFromIndex(otherStudents.endIndex.advancedBy(-lastPersonLength)) + " dropped this class.")

let range = otherStudents.endIndex.advancedBy(-lastPersonLength-2)..<otherStudents.endIndex
otherStudents.removeRange(range)
otherStudents += ", " + findFirstname(me.name).uppercaseString
print ("Other students in my class are \(otherStudents) was added.")

let namesArray = otherStudents.componentsSeparatedByString(", ")
print ("\(namesArray[2]) and \(namesArray[3]) are in the class")

