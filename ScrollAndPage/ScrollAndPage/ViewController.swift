//
//  ViewController.swift
//  ScrollAndPage
//
//  Created by CGLAB on 2017/5/24.
//  Copyright © 2017年 yc-shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors:[UIColor] = [UIColor.red, UIColor.blue, UIColor.green]
    
    var colorText:[String] = ["Red", "Blue", "Green"]
    
    @IBOutlet weak var nowLineText: UITextField!
    
    @IBOutlet weak var nowLine: UITextField!
    
    var frame: CGRect = CGRect.init(x: 0, y: 0, width: 0, height: 0)
    

    @IBAction func nextLineButton(_ sender: Any) {
        self.nowLineText.text = QQ.textAlignment.
    }
    
    
    //@IBOutlet weak var scrollView: UITextView!
    @IBOutlet weak var QQ: UITextView!
    
    
    //@IBOutlet weak var scrollViewOriginal: UIScrollView!
    
    //@IBOutlet weak var TextLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for index in 0..<colors.count {
            frame.origin.x = self.QQ.frame.size.width * CGFloat(index)
            frame.size = self.QQ.frame.size
            self.QQ.isPagingEnabled = true
            
            //var or let, I'm not sure.
            let subView = UIView(frame: frame)
            subView.backgroundColor = colors[index]
            
            //self.TextLabel.text = "AA"
            //self.TextLabel.text = colorText[index]
            //self.TextLabel.text = colorText.[0]
            
        }
        
        
        
        
        self.QQ.contentSize = CGSize.init(width: self.QQ.frame.size.width * CGFloat(colors.count), height: self.QQ.frame.size.height)
        //self.TextLabel.text = colors.[index]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

