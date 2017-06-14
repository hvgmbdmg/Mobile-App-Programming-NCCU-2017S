//
//  DataViewController.swift
//  TestPageBaseApp
//
//  Created by CGLAB on 2017/5/24.
//  Copyright © 2017年 yc-shen. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    var fontSize:Double = 24.0
    
    //var textOneLineLength = 15
    //var textPageLineNumber = 23
    
    @IBOutlet weak var additionalView: UIView!
    @IBOutlet weak var button1: UIButton!   //not used
    @IBOutlet weak var button2: UIButton!   //not used

    @IBOutlet weak var textLabel: UILabel!
    
    //textView is not used.
    @IBOutlet weak var textView: UIView!
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    var textObject: String = ""
    var additionalIsHidden: Bool = true

    @IBAction func editButton(_ sender: Any) {
        self.additionalView.isHidden = !additionalIsHidden
        //self.button1.isHidden = !additionalIsHidden
        additionalIsHidden = !additionalIsHidden
    }
    
    @IBAction func smallButton(_ sender: Any) {
        //self.textLabel.sizeThatFits(self.textLabel.font)
        
        if(fontSize>10){
            fontSize = fontSize - 1
            self.textLabel.font = UIFont(name: (textLabel.font?.fontName)!, size: CGFloat(fontSize))
        }
        //self.textLabel.font =  = UIFont(name: (textLabel.font?.fontName)!, size: CGFloat(textLabel.font?.fontSize)!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //print("========================")
        //print(textLabel.preferredMaxLayoutWidth)
        //print(textLabel.widthAnchor)
        //print(textLabel.numberOfLines)//this is text line number.
        //print(textLabel.sizeToFit())
        //print("========================")
        
        
        /*
        
        var fullName = ModelController.pageData[0]
        var fullNameArr = fullName.characters.split{$0 == "\n"}.map(String.init)
        // or simply:
        // let fullNameArr = fullName.characters.split{" "}.map(String.init)
        
        //fullNameArr[0] // First
        //fullNameArr[1] // Last
        
        for i in 0...10{
            print("$$$$$$$$$$")
            print(fullNameArr[i])
            print(fullNameArr[i].characters.count)
            //print(textLabel.sizeToFit(fullNameArr[i]))
            //print(ModelController.pageData)
            
            
        }*/
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
        self.textLabel.text = textObject
    }


}

