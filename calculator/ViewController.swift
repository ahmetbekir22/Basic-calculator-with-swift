//
//  ViewController.swift
//  calculator
//
//  Created by ahmet bekir on 6.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNumberFİeld: UITextField!
    
    @IBOutlet weak var secondNumberField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SummationButton(_ sender: Any) {
        
        if let firstNumber = Int(FirstNumberFİeld.text!)
        {
            if let secondNumber = Int(secondNumberField.text!)
            {
                let result = firstNumber + secondNumber
                ResultLabel.text = String(result)
            }else {
                // Handle invalid input
                ResultLabel.text = "Error: Invalid input"
            }

        }else {
            // Handle invalid input
            ResultLabel.text = "Error: Invalid input"
        }
        
    }
    
    
    @IBAction func subtractionButton(_ sender: Any) {
        if let firstNumber = Int(FirstNumberFİeld.text!)
        {
            if let secondNumber = Int(secondNumberField.text!)
            {
                let result = firstNumber - secondNumber
                ResultLabel.text = String(result)
            }else {
                // Handle invalid input
                ResultLabel.text = "Error: Invalid input"
            }
        }else {
            // Handle invalid input
            ResultLabel.text = "Error: Invalid input"
        }
    }
    
    @IBAction func productButton(_ sender: Any) {
        if let firstNumber = Int(FirstNumberFİeld.text!)
        {
            if let secondNumber = Int(secondNumberField.text!)
            {
                let result = firstNumber * secondNumber
                ResultLabel.text = String(result)
            }else {
                ResultLabel.text = "Error: Invalid input"
            }
            
        }else {
            ResultLabel.text = "Error: Invalid input"
        }
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        if let firstNumber = Double(FirstNumberFİeld.text!), let secondNumber = Double(secondNumberField.text!) {
            if secondNumber != 0 {
                let result = Double(firstNumber) / Double(secondNumber)
                ResultLabel.text = String(result)
            } else {
                ResultLabel.text = "Error: Division by zero"
            }
        } else {
            ResultLabel.text = "Error: Invalid input"
        }
    }

}

