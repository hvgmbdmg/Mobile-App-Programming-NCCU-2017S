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

    @IBOutlet weak var textLabel: UILabel!
    
    //textView is not used.
    @IBOutlet weak var textView: UIView!
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    var textObject: String = ""

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

