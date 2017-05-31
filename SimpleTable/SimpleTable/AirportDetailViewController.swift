//
//  AirportDetailViewController.swift
//  SimpleTable
//
//  Created by CGLAB on 2017/5/30.
//  Copyright © 2017年 yc-shen. All rights reserved.
//

import UIKit

class AirportDetailViewController: UIViewController {

    @IBOutlet weak var AirportImage: UIImageView!
    @IBOutlet weak var CountryLabel: UILabel!
    @IBOutlet weak var CityLabel: UILabel!
    @IBOutlet weak var AirportFullName: UILabel!
    
    @IBOutlet weak var TitleContext: UINavigationItem!
    
    var CountryText = ""
    var FullNameText = ""
    var airportImageName = ""
    var CityText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        //print("why")

        AirportImage.image = UIImage(named: airportImageName)
        CountryLabel.text = CountryText
        CityLabel.text = CityText
        AirportFullName.text = FullNameText
        TitleContext.title = airportImageName
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
