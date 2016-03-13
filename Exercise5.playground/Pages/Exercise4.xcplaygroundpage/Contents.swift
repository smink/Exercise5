
/*:
**Exercise:** You have to record all the students and their grades for your school. Leveraging arrays, dictionaries, and sets create table like containers for each class. Your classes are Math, Science, English and History with a total of 17 unique students. Print out each class roster and use and experiment with set operations and set membership and equality.
>> **Example Output:**
* `Math = Mathew Sheets, John Winters, Sam Smith`
* `Science = Sam Smith, Carson Daily, Adam Aarons`
* `Union of Math and Science = Mathew Sheets, John Winters, Sam Smith, Carson Daily, Adam Aarons`
>> **Constraints:**
* Use Set Operations
* intersect
* exclusiveOr
* union
* subtract
* Use Set Membership and Equality
* is equal
* isSubsetOf
* isSupersetOf
* isStrictSubsetOf
* isStrictSupersetOf
* isDisjointWith
*/
/*
http://listofrandomnames.com
Shelby Doering
Kelsi Rosemond
Broderick Swanger
Tyrell Selig
Lasandra Rubottom
Aaron Voisin
Sherri Latimer
Gracie Siller
Pearline Reiher
Farrah Bolen
Lucila Cornett
Yuette Smullen
Carline Mcdevitt
Lawanda Grassi
Robbi Reardon
Elaine Henline
Lasonya Skidmore
Shaquita Knox
Luna Tamez
Lindsay Cossey
*/


import UIKit

let mathArray: [String] = ["Mathew Sheets", "John Winters", "Sam Smith", "Scott Mink", "Broderick Swanger", "Aaron Voisin", "Robbi Reardon", "Pearline Reiher"]
let scienceArray: [String] = ["Travis Mink", "Sean Mink", "Sam Smith", "Shelby Doering", "Kelsi Rosemond", "Robbi Reardon", "Lindsay Cossey"]
let englishArray: [String] = ["Travis Mink", "Sean Mink", "John Smith", "Sam Jones", "Broderick Swanger", "Lucila Cornett", "Lindsay Cossey"]
let historyArray: [String] = ["Mathew Sheets", "John Winters", "Sam Smith", "Scott Mink", "Aaron Voisin", "Lucila Cornett", "Elaine Henline"]


let mathSet = Set(mathArray)
let scienceSet = Set(scienceArray)
let englishSet = Set(englishArray)
let historySet = Set(historyArray)


//let arrayOfClasses = [mathArray, scienceArray, englishArray, historyArray]
//for aclass in arrayOfClasses{
//    print(aclass)
//    for astring in aclass{
//        print(astring)
//    }
//}
//
//
//
//printSet(mathSet)

print ("Math xor Science \n")
printSet(mathSet.exclusiveOr(scienceSet))
    
print ("\nMath intersect Science\n")
printSet(mathSet.intersect(scienceSet))

print ("\nAll students\n")
let allStudents = ((mathSet.union(scienceSet)).union(englishSet)).union(historySet)
printSet(allStudents)
print ("All students count = \(allStudents.count)")



