/*:
**Exercise:**
Your a big tipper! When ever you go out to eat you tip 20% of the bill and never tip less than $3. Create a playground that prints the tip amount and the total amount. Within the playground, you should be able to change the bill to see how the tip amount varies.
>> **Example Output:**
* `What is the bill? $x.xx`
* `What is the tip percentage? x`
* `The tip is $x.xx`
* `The total is $x.xx`
*/

import UIKit


//  Set initial values
let bill: Double = 17.75
let tipPercentage: Double = 20
let minTip: Double = 3.00


let tip = calculateTip(bill, tipPercent: tipPercentage, minTip: minTip)

let billString  = getPrintableDollerValue(bill)
let tipString   = getPrintableDollerValue(tip)
let totalString = getPrintableDollerValue(bill + tip)

//   Print results
print ("What is the bill? \(billString)")
print ("What is the tip percentage? \(Int(tipPercentage))%")
print ("The tip is \(tipString)")
print ("The total is \(totalString)")


