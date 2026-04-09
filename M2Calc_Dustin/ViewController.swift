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
    
    var selectOperator: Operator?
    
    @IBOutlet weak var operater: UIButton!
    @IBAction func changeOperater(_ sender: Any)
    {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        /*
        let plusAction = UIAlertAction(title:"+(Plus)", style: .default, handler:{(action: UIAlertAction)->() in
            self.operater.setTitle("+", for: .normal))
        */
        let plusAction = UIAlertAction(title: "+ (Plus)", style: .default)
        { _ in self.operater.setTitle("+", for: .normal)
            self.selectOperator = .plus
        }
        
        actionSheet.addAction(plusAction)
        let minusAction = UIAlertAction(title: "- (Minus)", style: .default)
        { _ in
            self.operater.setTitle("-", for: .normal)
            self.selectOperator = .minus
        }
        actionSheet.addAction(minusAction)
        let divideAction = UIAlertAction(title: "/ (Divide)", style: .default)
        { _ in
            self.operater.setTitle("/", for: .normal)
            self.selectOperator = .divide
        }
        actionSheet.addAction(divideAction)
        let multiplyAction = UIAlertAction(title: "* (Multiply)", style: .default)
        { _ in
            self.operater.setTitle("*", for: .normal)
            self.selectOperator = .multiply
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
                if let op = selectOperator
                {
                    var result: Int? = nil
                    switch op
                    {
                    case .plus:
                        result = num1 + num2
                    case .minus:
                        result = num1 - num2
                    case .divide:
                        result = num1 / num2
                    case .multiply:
                        result = num1 * num2
                    default:
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
                number2.becomeFirstResponder()
            }
        }
        else
        {
            displayAlert(message: "Please input a valid first number")
            number1.becomeFirstResponder( )
        }
        
        if number1.isFirstResponder
        {
            number1.resignFirstResponder( )
        }
        else{
            number2.resignFirstResponder( )
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
        
        number1.delegate = self
        number2.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        number1.becomeFirstResponder( )
    }


}

extension ViewController: UITextFieldDelegate
{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        guard !string.isEmpty else { return true }
        guard let text = Int(string) else { return false }
        
        return true
    }
}
