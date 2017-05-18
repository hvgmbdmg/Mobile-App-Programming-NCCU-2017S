//
//  ViewController.swift
//  ReaderExample
//
//  Created by CGLAB on 2017/5/17.
//  Copyright © 2017年 MAP_First. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var FirstTextView: UITextView!
    
    //@IBOutlet weak var scrollView: UIScrollView!
    
    
    


    //let location = "~/狼與辛香料第一集片段.txt".
    //let fileContent = NSString(contentsOfFile: location, encoding: NSUTF8StringEncoding, error: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let location = NSString(string:"~/狼與辛香料第一集片段.txt").expandingTildeInPath
        //let location = Users/cglab/Desktop/swift/
        let fileContent = try? NSString(contentsOfFile: location, encoding: String.Encoding.utf8.rawValue)
        
        print(location)
        print(fileContent as Any)*/
        //FirstTextView.text = fileContent as String!;

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //let location = "~/file.txt".stringByExpandingTildeInPath
    //let fileContent = NSString(contentsOfFile: location, encoding: NSUTF8StringEncoding, error: nil)


}

