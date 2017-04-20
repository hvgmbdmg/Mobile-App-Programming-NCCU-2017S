//
//  ViewController.swift
//  HW2-Calculator
//
//  Created by CGLAB on 2017/4/18.
//  Copyright © 2017年 CGLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false;
    var operation = 0;
    var decimalNumber = false;
    //var stupid = false;
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func inputNumber(_ sender: UIButton) {
        
        if performingMath == true {
            display.text = "";
            performingMath = false;
        }
        
        
        display.text = display.text! + String(sender.tag - 1000)

        //Decimal Number Part
        /*
        if sender.tag != 1010 //Point
        {
            display.text = display.text! + String(sender.tag - 1000)
        }
        else{
            if decimalNumber == false {
                display.text = display.text! + ".";
                decimalNumber = true;
            }
        }*/
    
        numberOnScreen = Double(display.text!)!
        
        
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        let currentText = self.display.text ?? "0"
        guard !currentText.contains(".") else {
            return
        }
        self.display.text = currentText + "."
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        if sender.tag == 1200 //equal   Op = 0
        {
            if operation == 1
            {
                display.text = String(previousNumber + numberOnScreen)
            }
            else if operation == 2
            {
                display.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 3
            {
                display.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 4
            {
                /*if numberOnScreen == 0 {
                    display.text = "你的數學是體育導師教的嗎？"
                    stupid = true;
                }
                else {
                    display.text = String(previousNumber / numberOnScreen)
                }*/
                display.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 5
            {
                display.text = String(previousNumber.truncatingRemainder(dividingBy: numberOnScreen))
            }
            else if operation == 6
            {
                display.text = String(pow(previousNumber, numberOnScreen))
            }
            
            
            operation = 0;
            
            //if here is an integer;
            /*
            if Double(display.text!)! == floor(Double(display.text!)!) {
                decimalNumber = false
                display.text = String(Int(display.text!)!)
                
            }
            else {
                decimalNumber = true;
                numberOnScreen = Double(display.text!)!;
            }*/
            /*if stupid == false {
                numberOnScreen = Double(display.text!)!;
            }
            else{
                numberOnScreen = 0;
                previousNumber = 0;
                performingMath = false;
                operation = 0;
                stupid = false;
            }*/
            numberOnScreen = Double(display.text!)!;

            previousNumber = 0;
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        //if operation == 0
        //previousNumber = Double(display.text!)!
        
        if sender.tag == 1201 //Plus       Op = 1
        {
            display.text = "+"
            operation = 1
        }
        else if sender.tag == 1202 //Minus      Op = 2
        {
            display.text = "-"
            operation = 2
        }
        else if sender.tag == 1203 //Multiply   OP = 3
        {
            display.text = "×"
            operation = 3
        }
        else if sender.tag == 1204 //Divide     Op = 4
        {
            display.text = "÷"
            operation = 4
            
        }
        else if sender.tag == 1205 //
        {
            display.text = "%"
            operation = 5
        }
        else if sender.tag == 1206 //
        {
            display.text = "^"
            operation = 6
        }
        
        previousNumber = numberOnScreen;
        performingMath = true;//要求接下來輸入數字

    }
    
    
    @IBAction func singleParameter(_ sender: UIButton) {
        if sender.tag == 1251 //square
        {
            display.text = String(sqrt(numberOnScreen))
        }
        else if sender.tag == 1252 //log
        {
            display.text = String(log(numberOnScreen))
        }
        numberOnScreen = Double(display.text!)!;
    }
    

    //Delete is not finish yet.
    @IBAction func clearButton(_ sender: UIButton) {
        
        if sender.tag == 2000 //Delete
        {
            //no signal and not empty
            if performingMath == false && display.text != "" {
                var temp = String(describing: display.text)
                temp = String(temp.characters.dropLast())
                
                //display.text = String(display.text.characters.dropLast())
                //display.text = String( display.text.characters.dropLast(1))
                display.text = temp
            }
            if display.text == "" {
                numberOnScreen = 0;
            }
            else{
                //numberOnScreen = Double(display.text!)!
            }
        }
            
        else if sender.tag == 2001 //Clear
        {
            display.text = ""
            numberOnScreen = 0;
            previousNumber = 0;
            performingMath = false;
            operation = 0;
        }
    }
    
    
    @IBAction func specialBumber(_ sender: UIButton) {
        
        if sender.tag == 1300 //Pi
        {
            numberOnScreen = Double.pi
        }
        else if sender.tag == 1301 //Natural
        {
            numberOnScreen = 2.7182818284590452
        }
        display.text = String(numberOnScreen)
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

