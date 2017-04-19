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
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func inputNumber(_ sender: UIButton) {
        
        if performingMath == true {
            display.text = "";
            performingMath = false;
        }
        if sender.tag != 1010 //Point
        {
            display.text = display.text! + String(sender.tag - 1000)
        }
        else{
        }
    
        numberOnScreen = Double(display.text!)!
        
        
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
                display.text = String(previousNumber / numberOnScreen)
            }
            operation = 0;
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
        else if sender.tag == 1250 //
        {
            display.text = "%"
        }
        else if sender.tag == 1251 //
        {
            display.text = "^"
        }
        else if sender.tag == 1252 //
        {
            display.text = "√"
        }
        else if sender.tag == 1253 //Log
        {
            display.text = "log"
        }
        
        previousNumber = numberOnScreen;
        performingMath = true;//要求接下來輸入數字

    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        if sender.tag == 2000 //Delete
        {
        }
        else if sender.tag == 2001 //Clear
        {
        }
    }
    
    
    @IBAction func specialBumber(_ sender: UIButton) {
        
        if sender.tag == 1300 //Pi
        {
        }
        else if sender.tag == 1301 //Natural
        {
        }
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

