//
//  AirportTableViewCell.swift
//  SimpleTable
//
//  Created by CGLAB on 2017/5/30.
//  Copyright © 2017年 yc-shen. All rights reserved.
//

import UIKit

class AirportTableViewCell: UITableViewCell {

    @IBOutlet weak var FullName: UILabel!
    @IBOutlet weak var IATA: UILabel!
    @IBOutlet weak var City: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
