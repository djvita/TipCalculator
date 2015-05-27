//
//  ViewController.swift
//  TipCalculator
//
//  Created by vita on 5/26/15.
//  Copyright (c) 2015 vita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var tiprateSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        //1- get the total bill

        var userInput = billTextField.text as NSString
        var totalBill: Float = userInput.floatValue
        
        //2- determine tip rate
        
        var index: Int = tiprateSegmentedControl.selectedSegmentIndex
        var tipRate: Float = 0.15
        if index == 0 {
            tipRate = 0.15
        } else if index == 1 {
                tipRate = 0.20
        } else {
            tipRate = 0.25
        }
        
        //3- calculate tip
        
        var tip: Float = totalBill * tipRate
        
        //4- display tip
        
        tipLabel.text = "$\(tip)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

