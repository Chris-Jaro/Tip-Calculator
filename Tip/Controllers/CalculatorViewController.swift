//
//  ViewController.swift
//  Tip
//
//  Created by Chris Yarosh on 07/10/2020.
//  Copyright © 2020 Chris Yarosh Development. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        calculatorBrain.updateUI(text: sender.currentTitle!)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper){
        splitNumberLabel.text = String(Int(sender.value))
        calculatorBrain.numberOfPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.totalBillNumber = Float(billTextField.text!)
        
        calculatorBrain.splitResultCalculate()
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.text = calculatorBrain.endResultSplit
            destinationVC.people = calculatorBrain.numberOfPeople
            destinationVC.tip = calculatorBrain.tipPercentageString
        }
    }
}


