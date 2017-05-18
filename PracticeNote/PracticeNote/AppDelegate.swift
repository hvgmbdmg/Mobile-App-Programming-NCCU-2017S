//
//  AppDelegate.swift
//  PracticeNote
//
//  Created by CGLAB on 2017/5/3.
//  Copyright © 2017年 CGlab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let documentDirectory =
            FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        print("Note will be save at \(documentDirectory)")
        
        
        let note = PureTextNote(title: "first note", content: "Hello")
        
        try! note.save()
        
        return true
    }



}

