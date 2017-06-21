//
//  ModelController.swift
//  AAA
//
//  Created by Mac on 2017/6/5.
//  Copyright © 2017年 MAP_First. All rights reserved.
//

import UIKit

/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */


class ModelController: NSObject, UIPageViewControllerDataSource {
    
    
    var textOneLineLength = ViewController.bigWordOneLine
    var textPageLineNumber = ViewController.bigStringPageLine
    
    var smallTextOneLineLength = ViewController.smallWordOneLine
    var smallTextPageLineNumber = ViewController.smallStringPageLine
    
    var rawData: String = ""
    var lineData: [String] = []
    var onePageData :String = ""
    static var pageData: [String] = []
    
    var smallLineData: [String] = []
    var smallOnePageData: String = ""
    static var smallPageData: [String] = []
    
    static var bigIndex:Int = 0;
    static var smallIndex:Int = 0;
    
    
    //public static var pageData: [String] = []
    static var filename = ""
    
    var textData: [String] = []
    
    override init() {
        super.init()
        
        ModelController.smallPageData.removeAll();
        ModelController.pageData.removeAll();
        
        let storageURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let aaa = storageURL.appendingPathComponent("\(ModelController.filename).txt")
        if let path = Bundle.main.path(forResource: "狼與辛香料第一集片段", ofType: "txt") {
            do {
                let data = try String(contentsOfFile: aaa.path, encoding: .utf8)
                let myStrings = data.components(separatedBy: .newlines)
                rawData = myStrings.joined(separator: "\n")
            } catch {
                print(error)
            }
            print("load file finished")
            
        }
        
        var rawDataLineArr = rawData.characters.split{$0 == "\n"}.map(String.init)
        
        for rawLine in rawDataLineArr{
            //print("====================")
            //print(rawLine)
            //print(rawLine.characters.count)
            
            var str :String = rawLine
            while str != "" {
                let strLen = str.characters.count;
                if strLen >= textOneLineLength {
                    let index = str.index(str.startIndex, offsetBy: textOneLineLength)
                    //print(str.substring(to: index))
                    lineData.append(str.substring(to: index))
                    str = String( str.characters.suffix( strLen - textOneLineLength ))
                }
                else{
                    //print(str);
                    lineData.append(str)
                    str = ""
                    lineData.append(" ")
                }
            }
            //print(textLabel.sizeToFit(fullNameArr[i]))
            //print(ModelController.pageData)
        }
        /*
         for line in lineData{
         print(line)
         }
         */
        print("line Data Count: ")
        print(lineData.count)
        let totalPageNumber = Int( lineData.count / textPageLineNumber ) + 1
        print("Total Page Number: ")
        print(totalPageNumber)
        
        for i in 0...totalPageNumber-2 {
            onePageData = ""
            for j in 0...textPageLineNumber-1 {
                onePageData.append(lineData[i*textPageLineNumber+j])
                onePageData.append("\n")
                //pageData[i].append(lineData[i*23+j])
            }
            ModelController.pageData.append(onePageData)
        }
        onePageData = ""
        for i in (totalPageNumber-1)*textPageLineNumber...lineData.count-1{
            onePageData.append(lineData[i])
            onePageData.append("\n")
        }
        for _ in 0...textPageLineNumber{
            onePageData.append("\n")
        }
        //onePageData.append("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        ModelController.pageData.append(onePageData)
        
        
        print("doing small file")
        
        rawDataLineArr = rawData.characters.split{$0 == "\n"}.map(String.init)
        
        for rawLine in rawDataLineArr{
            //print("====================")
            //print(rawLine)
            //print(rawLine.characters.count)
            
            var str :String = rawLine
            while str != "" {
                let strLen = str.characters.count;
                if strLen >= smallTextOneLineLength {
                    let index = str.index(str.startIndex, offsetBy: smallTextOneLineLength)
                    //print(str.substring(to: index))
                    smallLineData.append(str.substring(to: index))
                    str = String( str.characters.suffix( strLen - smallTextOneLineLength ))
                }
                else{
                    //print(str);
                    smallLineData.append(str)
                    str = ""
                    smallLineData.append(" ")
                }
            }
            //print(textLabel.sizeToFit(fullNameArr[i]))
            //print(ModelController.pageData)
        }
        /*
         for line in lineData{
         print(line)
         }
         */
        print("small line Data Count: ")
        print(smallLineData.count)
        let smallTotalPageNumber = Int( smallLineData.count / smallTextPageLineNumber ) + 1
        print("Small Total Page Number: ")
        print(smallTotalPageNumber)
        
        for i in 0...smallTotalPageNumber-2 {
            smallOnePageData = ""
            for j in 0...smallTextPageLineNumber-1 {
                smallOnePageData.append(smallLineData[i*smallTextPageLineNumber+j])
                smallOnePageData.append("\n")
                //pageData[i].append(lineData[i*23+j])
            }
            ModelController.smallPageData.append(smallOnePageData)
        }
        smallOnePageData = ""
        for i in (smallTotalPageNumber-1)*smallTextPageLineNumber...smallLineData.count-1{
            smallOnePageData.append(smallLineData[i])
            smallOnePageData.append("\n")
        }
        for _ in 0...smallTextPageLineNumber{
            smallOnePageData.append("\n")
        }
        //onePageData.append("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        ModelController.smallPageData.append(smallOnePageData)
    }
    
    public func doSomething(){
        //print("QQ")
        if( ViewController.isBig ){//small to big
            ModelController.bigIndex = ModelController.smallIndex*ModelController.pageData.count/ModelController.smallPageData.count
            ViewController.changeSizeText = ModelController.pageData[ModelController.bigIndex]
            
        }
        else{
            ModelController.smallIndex = ModelController.bigIndex*ModelController.smallPageData.count/ModelController.pageData.count;
            ViewController.changeSizeText = ModelController.smallPageData[ModelController.smallIndex]
        }
        //ViewController.isBig
        
    }
    
    func viewControllerAtIndex(_ index: Int, storyboard: UIStoryboard) -> ViewController? {
        // Return the data view controller for the given index.
        //print("AT index")
        if( ViewController.isBig ){
            if (ModelController.pageData.count == 0) || (index >= ModelController.pageData.count) {
                return nil
            }
        
            // Create a new view controller and pass suitable data.
            let dataViewController = storyboard.instantiateViewController(withIdentifier: "TextViewController") as! ViewController
            dataViewController.dataObject = "狼與辛香料第一集片段"
            dataViewController.textObject = ModelController.pageData[index]
            return dataViewController
        }
        else{
            if (ModelController.smallPageData.count == 0) || (index >= ModelController.smallPageData.count) {
                return nil
            }
            
            // Create a new view controller and pass suitable data.
            let dataViewController = storyboard.instantiateViewController(withIdentifier: "TextViewController") as! ViewController
            dataViewController.dataObject = "狼與辛香料第一集片段"
            dataViewController.textObject = ModelController.smallPageData[index]
            return dataViewController
        }
    }
    
    func indexOfViewController(_ viewController: ViewController) -> Int {
        // Return the index of the given data view controller.
        // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
        //print("index of")
        if( ViewController.isBig ){
            return ModelController.pageData.index(of: viewController.textObject) ?? NSNotFound
        }
        else{
            return ModelController.smallPageData.index(of: viewController.textObject) ?? NSNotFound
        }
        
    }
    
    // MARK: - Page View Controller Data Source
    
    //Turn Left
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = self.indexOfViewController(viewController as! ViewController)
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index -= 1
        if( ViewController.isBig ){
            ModelController.bigIndex = index
        }
        else{
            ModelController.smallIndex = index
        }
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)

    }
    
    
    //Turn Right
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        //print("Turn Right")
        if( ViewController.isBig ){
            var index = self.indexOfViewController(viewController as! ViewController)
            if index == NSNotFound {
                index = ModelController.bigIndex
                //return nil
            }
            index += 1
        
            //Test
            //print(ModelController.pageData[index]);
            ModelController.bigIndex = index;
        
            if index == ModelController.pageData.count {
                    return nil
            }
            //print("Turn Right??")
            return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
        }
        else{
            var index = self.indexOfViewController(viewController as! ViewController)
            if index == NSNotFound {
                //print("HERE!!!")
                index = ModelController.smallIndex
                //return nil
            }
            //print("Where")
            index += 1
            
            ModelController.smallIndex = index;
            //Test
            //print(ModelController.pageData[index]);
            
            if index == ModelController.smallPageData.count {
                return nil
            }
            //print("Turn Right?")
            return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
        }
        //print("Turn Right End")
    }
}

