//
//  ViewController.swift
//  Hello
//
//  Created by Paul BESRET on 05/11/2018.
//  Copyright © 2018 Paul BESRET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var result: Int = 0;
    var signe: String = "";
    var chaineTemp: String = "";
    var firstNumber: Int = 0;
    var secondNumber: Int = 0;
    @IBOutlet weak var screenLabel: UILabel!
    
    // Number Buttons
    @IBAction func nineButton(_ sender: Any) {
        chaineTemp += "9";
        screenLabel.text = chaineTemp
    }
    
    @IBAction func eightButton(_ sender: Any) {
        chaineTemp += "8"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        chaineTemp += "7"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func sixButton(_ sender: Any) {
        chaineTemp += "6"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        chaineTemp += "5"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func fourButton(_ sender: Any) {
        chaineTemp += "4"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func threeButton(_ sender: Any) {
        chaineTemp += "3"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func twoButton(_ sender: Any) {
        chaineTemp += "2"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func oneButton(_ sender: Any) {
        chaineTemp += "1"
        screenLabel.text = chaineTemp
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        chaineTemp += "0"
        screenLabel.text = chaineTemp
    }
    
    // Operator Buttons
    @IBAction func plusButton(_ sender: Any) {
        signe = "+"
        firstNumber = Int(chaineTemp)!
        chaineTemp = ""
        screenLabel.text = "+"
    }
    @IBAction func minusButton(_ sender: Any) {
        signe = "-"
        firstNumber = Int(chaineTemp)!
        chaineTemp = ""
        screenLabel.text = "-"
    }
    @IBAction func multipleButton(_ sender: Any) {
        signe = "*"
        firstNumber = Int(chaineTemp)!
        chaineTemp = ""
        screenLabel.text = "x"
    }
    @IBAction func divideButton(_ sender: Any) {
        signe = "/"
        firstNumber = Int(chaineTemp)!
        chaineTemp = ""
        screenLabel.text = "/"
    }
    
    @IBAction func equalButton(_ sender: Any) {
        if(signe != ""){
            secondNumber = Int(chaineTemp)!
            switch (signe){
                case "+":
                    result = firstNumber + secondNumber
                    screenLabel.text = String(result)
                    break
                case "-":
                    result = firstNumber - secondNumber
                    screenLabel.text = String(result)
                    break
                case "*":
                    result = firstNumber * secondNumber
                    screenLabel.text = String(result)
                    break
                case "/":
                    result = firstNumber / secondNumber
                    screenLabel.text = String(result)
                    break
                default:
                    break;
            }
            result = 0;
            signe = "";
            chaineTemp = "";
            firstNumber = 0;
            secondNumber = 0;
        }
    }
    
    @IBAction func cleanButton(_ sender: Any) {
        result = 0;
        signe = "";
        chaineTemp = "";
        firstNumber = 0;
        secondNumber = 0;
        screenLabel.text = ""
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
