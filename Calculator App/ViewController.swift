//
//  ViewController.swift
//  test
//
//  Created by Ahmed Gaber on 6/15/20.
//  Copyright © 2020 com.ahmedgaber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber = true
    private var stordValue: String = ""
    
    private var displayValue: Double {
        get {
            guard let number = Double (displayLabel.text!) else {
                fatalError()
            }
            return number
        }
       /* set {
            displayLabel.text = String (newValue)
        }*/
    }
    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

     var calculator = CalclatorLogic ()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
   
        if let calcMethod = sender.currentTitle {
            
           calculator.setNumber(displayValue)
            
            if let result =  calculator.calc(calcValue: calcMethod)  {
                displayLabel.text = String (result)

            }
        
        }
        
    }
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
    
        if let numValue = sender.currentTitle{
            if stordValue.contains(".") && sender.currentTitle == "."{
                return
            }
            if isFinishedTypingNumber  {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }
                
            else{

            displayLabel.text =  displayLabel.text! + numValue
            stordValue = displayLabel.text!
    }
}
    }
    
}
