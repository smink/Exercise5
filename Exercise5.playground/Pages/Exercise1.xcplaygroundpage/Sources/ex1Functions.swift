import Foundation


public func calculateTip(bill: Double, tipPercent: Double, minTip: Double) ->Double{
    
    var tip = bill * (Double(tipPercent)/100)
    if (tip < minTip) {
        tip = minTip
    }
    return tip
}


public func getPrintableDollerValue(valueToConvert: Double) -> String {
    var dollarsStr: String?
    var centsStr: String?
    
    dollarsStr = String(Int(valueToConvert))
    let cents = (Int(valueToConvert*100)-(Int(valueToConvert)*100))
    
    if (cents > 9) {
        centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100))
    }
    else {
        centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) + "0"
    }
    
    return "$" + dollarsStr! + "." + centsStr!
}