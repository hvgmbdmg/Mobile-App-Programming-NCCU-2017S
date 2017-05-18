//
//  PureTextNote.swift
//  PracticeNote
//
//  Created by CGLAB on 2017/5/3.
//  Copyright © 2017年 CGlab. All rights reserved.
//

import Foundation


struct PureTextNote {
    /*
     Spec:
     1. The title of a note is its file name.
     2. The content of a note is its file name.
     3. We put notes in user's Documents directory.
     4. We may need a list of user's notes.
     */
    
    
    var title: String;
    var content: String;
    
    /*
    static func open(title: String) -> PureTextNote {
        let documentDirectory =
            FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let fileURL = documentDirectory.appendingPathComponent("\(title).txt");
        
        //guard let content = try ? String
        
        //return ;
        
    }*/
    
    
    func save() throws {
        let documentDirectory =
            FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let fileURL = documentDirectory.appendingPathComponent("\(self.title).txt");
        
        try self.content.write(to: fileURL, atomically: true, encoding: .utf8)
    }
    
    
}
