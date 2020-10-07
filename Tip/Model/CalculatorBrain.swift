//
//  CalculatorBrain.swift
//  Tip
//
//  Created by Chris Yarosh on 07/10/2020.
//  Copyright © 2020 Chris Yarosh Development. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var tipPercentageNumber: Float = 0.0
    var tipPercentageString: String = "10%"
    
    var numberOfPeople: Int  = 2
    
    var endResultSplit: Float = 0.0
    var totalBillNumber:Float?
    
    mutating func splitResultCalculate(){
        endResultSplit = (totalBillNumber ?? 0.0 + (totalBillNumber ?? 0.0 * tipPercentageNumber)) / Float(numberOfPeople)
    }
    
    mutating func updateUI(text:String){
        if text == "0%"{
            tipPercentageNumber = 0.0
            tipPercentageString = "0%"
        }else if text == "10%"{
            tipPercentageNumber = 0.1
            tipPercentageString = "10%"
        }else if text == "20%"{
            tipPercentageNumber = 0.2
            tipPercentageString = "20%"
        }
    }
}
