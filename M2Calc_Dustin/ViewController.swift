//
//  ViewController.swift
//  M2Calc_Dustin
//
//  Created by Dustin Lay on 1/27/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var operater: UIButton!
    @IBAction func changeOperater(_ sender: Any)
    {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction = UIAlertAction(title: "+ (Plus)", style: .default)
        { _ in
            self.operater.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        let minusAction = UIAlertAction(title: "- (Minus)", style: .default)
        { _ in
            self.operater.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        let divideAction = UIAlertAction(title: "/ (Divide)", style: .default)
        { _ in
            self.operater.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        let multiplyAction = UIAlertAction(title: "* (Multiply)", style: .default)
        { _ in
            self.operater.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        //Adds to the screen
        present(actionSheet, animated: true)
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBAction func calculateButton(_ sender: Any)
    {
        //let num1 = Int(number1.text!)!
        //let num2 = Int(number2.text!)!
        //let op = operater.title(for: .normal)
        
        if let num1 = number1.text, let num1 = Int(num1)
        {
            if let num2 = number2.text, let num2 = Int(num2)
            {
                if let op = operater.title(for: .normal)
                {
                    var result: Int? = nil
                    switch op
                    {
                    case "+":
                        result = num1 + num2
                    case "-":
                        result = num1 - num2
                    case "/":
                        result = num1 / num2
                    case "*":
                        result = num1 * num2
                    default :
                        print("Unknown operator")
                    }
                    if let result = result
                    {
                        outputLabel.text = "\(result)"
                    }
                }
                else
                {
                    displayAlert(message: "Please select an operater")
                }
            }
            else
            {
                displayAlert(message: "Please input a valid second number")
            }
        }
        else
        {
            displayAlert(message: "Please input a valid first number")
        }
    }
    
    func displayAlert(message: String)
    {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//ctrl + B = builds project
//ctrl + R = runs project
