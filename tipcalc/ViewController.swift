//
//  ViewController.swift
//  tipcalc
//
//  Created by Kauther Zeini on 9/13/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true) //dismiss keyboard
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Calculate the bill amount
        let bill = Double(billField.text!) ?? 0 //anything left of question mark, if not valid, make it 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip) //prints two decimal places for the tip
        totalLabel.text = String(format: "$%.2f", total) //prints two decimal places for the total
    }
    
    
    
}

