//
//  ViewController.swift
//  SimpleTable
//
//  Created by CGLAB on 2017/5/23.
//  Copyright © 2017年 yc-shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var isLoadData: Bool = false;
    var airportsData = [[String]]();
    
    struct airportsGrouped {
        var countryName :String
        var airportInfo :[[String]]
    }
    
    var groupedArray = [airportsGrouped]()
    var CountryArray = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    //var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "AAA", "BBB", "CCC", "DDD", "EEE", "FFF", "GGG", "HHH", "III", "JJJ", "KKK", "LLL", "MMM", "NNN", "OOO", "PPP"]
    
    
    
    func tableView(_ tableiew: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupedArray[section].airportInfo.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return CountryArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return CountryArray[section]
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "AirportCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AirportTableViewCell
        
        //set cell

        cell.FullName.text = groupedArray[indexPath.section].airportInfo[indexPath.row][0]
        cell.IATA.text = groupedArray[indexPath.section].airportInfo[indexPath.row][2]
        cell.City.text = groupedArray[indexPath.section].airportInfo[indexPath.row][3]

        //cell.textLabel?.text = airportsData[indexPath.row][0]
        //cell.imageView?.image = UIImage(named: "picOne")
        
        return cell;
    }
    
    override var prefersStatusBarHidden: Bool {
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let filepath = Bundle.main.path(forResource: "airports", ofType: "plist")
        
        let airportList = NSArray(contentsOfFile: filepath!) as! [[String:AnyObject]]
        
        for airport in airportList{
            //print(airport["Airport"]!)
            //print(airport["Country"]!)
            //print(airport["IATA"]!)
            //print(airport["ServedCity"]!)
            
            airportsData.append([airport["Airport"] as! String, airport["Country"] as! String, airport["IATA"] as! String, airport["ServedCity"] as! String])
            
            if !CountryArray.contains(airport["Country"] as! String) {
                CountryArray.append(airport["Country"] as! String)
            }
        }
        
        //then, group airports by country
        //if
        
        for country in CountryArray{
            var sameCountryArray = [[String]]()
            sameCountryArray.removeAll()
            
            for airport in airportsData{
                if country == airport[1] {
                    sameCountryArray.append(airport)
                }
            }
            groupedArray.append(airportsGrouped(countryName: country,airportInfo: sameCountryArray))
            
            print(country)
            //sameCountryArray.removeAll()

        }
        print(CountryArray.count)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("do prepare")
        if segue.identifier == "showAirportDetail" {
            if let IndexPath = tableView.indexPathForSelectedRow {
                let destViewController = segue.destination as! AirportDetailViewController;
                //let AAA: String = airportsData[IndexPath.row][2]
                print(groupedArray[IndexPath.section].airportInfo[IndexPath.row][2])
                destViewController.airportImageName = groupedArray[IndexPath.section].airportInfo[IndexPath.row][2];
                destViewController.FullNameText = groupedArray[IndexPath.section].airportInfo[IndexPath.row][0]
                destViewController.CityText = groupedArray[IndexPath.section].airportInfo[IndexPath.row][3]
                destViewController.CountryText = groupedArray[IndexPath.section].airportInfo[IndexPath.row][1]
                
                

            }
        }
    }


}

