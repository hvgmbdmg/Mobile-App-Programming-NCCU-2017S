//
//  ViewController.swift
//  AAA
//
//  Created by CGLAB on 2017/5/17.
//  Copyright © 2017年 MAP_First. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fontSize:Double = 17.0
    
    @IBOutlet weak var textContent: UITextView!
    
    @IBAction func biggerContent(_ sender: Any) {
        //fontSize += 5
        //textContent.font = UIFont(name: (textContent.font?.fontName)!, size: CGFloat(22.0))
    }
    @IBAction func QQ(_ sender: Any) {
        //textContent.font = UIFont(name: (textContent.font?.fontName)!, size: CGFloat(22.0))
        fontSize += 1
        textContent.font = UIFont(name: (textContent.font?.fontName)!, size: CGFloat(fontSize))
    }
    
    @IBAction func play(_ sender: Any) {
        var width:CGFloat = textContent.frame.size.width;
        var page :NSInteger = (textContent.contentOffset.x + (0.5 * width))/width;
        self.scrollToPage(page: 2, animated: true)
    }
    
    var content :String = "狼與辛香料 第一集 序章  \n在這個村落，人們會把迎風搖曳的飽滿麥穗形容成狼在奔跑。因爲麥穗迎風搖曳的姿態，就像在麥田裏奔跑的狼。    人們還會說被強風吹倒的麥穗是遭狼踐踏，收成不好時會說是被狼給吃了。    這種比喻雖然貼切，但其中也包含了負面的意味，顯得美中不足。    不過，如今這些比喻只是帶點玩笑性質的說法，幾乎不再有人會像從前一樣，帶著親密感與恐懼感來使用這些話語。    從陣陣搖擺的麥穗縫中仰望的秋天天空，即使過了好幾百年也不曾改變，但是底下的人事物全變了樣。    年複一年，勤奮種麥的村民們再怎麽長壽，也不過活到七十歲。    要是人事物好幾百年都沒有改變，反而不見得好。    只是，不禁讓人覺得，或許沒必要再爲了情義而守護以往的承諾。    這裏的村民已不再需要咱了。    聳立在東方的高山，使得村落天空的雲朵多半飄向北方。    想起位在雲朵飄去那一頭的北方故鄉，便忍不住歎了口氣。    把視線從天空拉回麥田，引以爲傲的尾巴就在面前搖擺。    閑來無事只好專心梳理尾巴的毛。    秋天的天空高而清澈。    今年又到了收割的時期。    成群無數的狼在麥田裏奔跑。狼與辛香料 第一集 序章  \n在這個村落，人們會把迎風搖曳的飽滿麥穗形容成狼在奔跑。因爲麥穗迎風搖曳的姿態，就像在麥田裏奔跑的狼。    人們還會說被強風吹倒的麥穗是遭狼踐踏，收成不好時會說是被狼給吃了。    這種比喻雖然貼切，但其中也包含了負面的意味，顯得美中不足。    不過，如今這些比喻只是帶點玩笑性質的說法，幾乎不再有人會像從前一樣，帶著親密感與恐懼感來使用這些話語。    從陣陣搖擺的麥穗縫中仰望的秋天天空，即使過了好幾百年也不曾改變，但是底下的人事物全變了樣。    年複一年，勤奮種麥的村民們再怎麽長壽，也不過活到七十歲。    要是人事物好幾百年都沒有改變，反而不見得好。    只是，不禁讓人覺得，或許沒必要再爲了情義而守護以往的承諾。    這裏的村民已不再需要咱了。    聳立在東方的高山，使得村落天空的雲朵多半飄向北方。    想起位在雲朵飄去那一頭的北方故鄉，便忍不住歎了口氣。    把視線從天空拉回麥田，引以爲傲的尾巴就在面前搖擺。    閑來無事只好專心梳理尾巴的毛。    秋天的天空高而清澈。    今年又到了收割的時期。    成群無數的狼在麥田裏奔跑。狼與辛香料 第一集 序章  \n在這個村落，人們會把迎風搖曳的飽滿麥穗形容成狼在奔跑。因爲麥穗迎風搖曳的姿態，就像在麥田裏奔跑的狼。    人們還會說被強風吹倒的麥穗是遭狼踐踏，收成不好時會說是被狼給吃了。    這種比喻雖然貼切，但其中也包含了負面的意味，顯得美中不足。    不過，如今這些比喻只是帶點玩笑性質的說法，幾乎不再有人會像從前一樣，帶著親密感與恐懼感來使用這些話語。    從陣陣搖擺的麥穗縫中仰望的秋天天空，即使過了好幾百年也不曾改變，但是底下的人事物全變了樣。    年複一年，勤奮種麥的村民們再怎麽長壽，也不過活到七十歲。    要是人事物好幾百年都沒有改變，反而不見得好。    只是，不禁讓人覺得，或許沒必要再爲了情義而守護以往的承諾。    這裏的村民已不再需要咱了。    聳立在東方的高山，使得村落天空的雲朵多半飄向北方。    想起位在雲朵飄去那一頭的北方故鄉，便忍不住歎了口氣。    把視線從天空拉回麥田，引以爲傲的尾巴就在面前搖擺。    閑來無事只好專心梳理尾巴的毛。    秋天的天空高而清澈。    今年又到了收割的時期。    成群無數的狼在麥田裏奔跑。狼與辛香料 第一集 序章  \n在這個村落，人們會把迎風搖曳的飽滿麥穗形容成狼在奔跑。因爲麥穗迎風搖曳的姿態，就像在麥田裏奔跑的狼。    人們還會說被強風吹倒的麥穗是遭狼踐踏，收成不好時會說是被狼給吃了。    這種比喻雖然貼切，但其中也包含了負面的意味，顯得美中不足。    不過，如今這些比喻只是帶點玩笑性質的說法，幾乎不再有人會像從前一樣，帶著親密感與恐懼感來使用這些話語。    從陣陣搖擺的麥穗縫中仰望的秋天天空，即使過了好幾百年也不曾改變，但是底下的人事物全變了樣。    年複一年，勤奮種麥的村民們再怎麽長壽，也不過活到七十歲。    要是人事物好幾百年都沒有改變，反而不見得好。    只是，不禁讓人覺得，或許沒必要再爲了情義而守護以往的承諾。    這裏的村民已不再需要咱了。    聳立在東方的高山，使得村落天空的雲朵多半飄向北方。    想起位在雲朵飄去那一頭的北方故鄉，便忍不住歎了口氣。    把視線從天空拉回麥田，引以爲傲的尾巴就在面前搖擺。    閑來無事只好專心梳理尾巴的毛。    秋天的天空高而清澈。    今年又到了收割的時期。    成群無數的狼在麥田裏奔跑。"
    
    
    func scrollToPage(page: Int, animated: Bool) {
        //CGRect frame = textcon.frame;
        //textContent.frame
        /*var frame: CGRect = self.textContent.frame
        frame.origin.x = frame.size.width * CGFloat(page);
        frame.origin.y = 0;
        self.textContent.scrollRectToVisible(frame, animated: animated)
        */
        var frame :CGRect = textContent.frame;
        frame.origin.x = frame.size.width * 2;
        frame.origin.y = 0;
        [scrollView scrollRectToVisible:frame animated:YES];

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textContent.text = content;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

