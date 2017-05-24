//
//  ModelController.swift
//  TestPageBaseApp
//
//  Created by CGLAB on 2017/5/24.
//  Copyright © 2017年 yc-shen. All rights reserved.
//

import UIKit

/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */


class ModelController: NSObject, UIPageViewControllerDataSource {

    var pageData: [String] = []
    
    var textData: [String] = []


    override init() {
        super.init()
        // Create the data model.
        //let dateFormatter = DateFormatter()
        
        //Here is Label text.
        //pageData = dateFormatter.monthSymbols
        
        //pageData = ["Hello", "Mac", "World"]
        
        pageData = ["狼與辛香料 第一集 序章 \n \n在這個村落，人們會把迎風搖曳的飽滿麥穗形容成狼在奔跑。\n因爲麥穗迎風搖曳的姿態，就像在麥田裏奔跑的狼。\n人們還會說被強風吹倒的麥穗是遭狼踐踏，收成不好時會說是被狼給吃了。\n這種比喻雖然貼切，但其中也包含了負面的意味，顯得美中不足。\n不過，如今這些比喻只是帶點玩笑性質的說法，幾乎不再有人會像從前一樣，帶著親密感與恐懼感來使用這些話語。\n從陣陣搖擺的麥穗縫中仰望的秋天天空，即使過了好幾百年也不曾改變，但是底下的人事物全變了樣。\n年複一年，勤奮種麥的村民們再怎麽長壽，也不過活到七十歲。\n要是人事物好幾百年都沒有改變，反而不見得好。只是，不禁讓人覺得，或許沒必要再爲了情義而", "以往的承諾。\n這裏的村民已不再需要咱了。\n聳立在東方的高山，使得村落天空的雲朵多半飄向北方。\n想起位在雲朵飄去那一頭的北方故鄉，便忍不住歎了口氣。\n把視線從天空拉回麥田，引以爲傲的尾巴就在面前搖擺。\n閑來無事只好專心梳理尾巴的毛。\n秋天的天空高而清澈。\n今年又到了收割的時期。\n成群無數的狼在麥田裏奔跑。\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","第1行 \n第2行 \n第3行 \n第4行 \n第5行 \n第6行 \n第7行 \n第8行 \n第9行 \n第10行 \n第11行 \n第12行 \n第13行 \n第14行 \n第15行 \n第16行 \n第17行 \n第18行 \n第19行 \n第20行\n 第21行 \n第22行 \n第23行 \n第24行 \n第25行 \n第26行 \n第27行 \n第28行 \n第29行 \n第30行\n第31行 \n第32行 \n第33行 \n第34行 \n第35行 \n第36行 \n第37行 \n第38行 \n第39行 \n第40行"]
        
    }

    func viewControllerAtIndex(_ index: Int, storyboard: UIStoryboard) -> DataViewController? {
        // Return the data view controller for the given index.
        if (self.pageData.count == 0) || (index >= self.pageData.count) {
            return nil
        }

        // Create a new view controller and pass suitable data.
        let dataViewController = storyboard.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        dataViewController.dataObject = self.pageData[index]
        dataViewController.textObject = self.pageData[index]
        return dataViewController
    }

    func indexOfViewController(_ viewController: DataViewController) -> Int {
        // Return the index of the given data view controller.
        // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
        return pageData.index(of: viewController.dataObject) ?? NSNotFound
    }

    // MARK: - Page View Controller Data Source

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = self.indexOfViewController(viewController as! DataViewController)
        if (index == 0) || (index == NSNotFound) {
            return nil
        }
        
        index -= 1
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = self.indexOfViewController(viewController as! DataViewController)
        if index == NSNotFound {
            return nil
        }
        
        index += 1
        if index == self.pageData.count {
            return nil
        }
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }

}

