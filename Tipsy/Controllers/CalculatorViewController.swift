//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipPercentage: Float = 0.10
    var numberOfPeople = 0
    var splitAmount: Float = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        switch sender.currentTitle {
        case "0%":
            tipPercentage = 0
        case "10%":
            tipPercentage = 0.10
        case "20%":
            tipPercentage = 0.20
        default:
            tipPercentage = 0
        }
        
        sender.isSelected = true
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPercentage)
        print(numberOfPeople)
        print(Float(billTextField.text!))
        
        let totalAmount = Float(billTextField.text!) ?? 0.0
        splitAmount = (totalAmount * (1.0 + tipPercentage)) / Float(numberOfPeople)
        
        print(splitAmount)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResults") {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.splitAmount = splitAmount
            destinationVC.numOfPeople = numberOfPeople
            destinationVC.tipPercentage = tipPercentage
        }
    }
}

