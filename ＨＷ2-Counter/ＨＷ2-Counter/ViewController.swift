//
//  ViewController.swift
//  ＨＷ2-Counter
//
//  Created by CGLAB on 2017/3/29.
//  Copyright © 2017年 CGLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentCount = 0 {
        didSet {
            if self.currentCount < 0 {
                self.currentCount = 0;
            }
            //self.displaLa
            //self.displa = self.currentCount;
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
    
    
    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
        
    }


}

