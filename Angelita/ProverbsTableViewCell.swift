//
//  ProverbsTableViewCell.swift
//  Angelita
//
//  Created by Ana Calvo on 21/3/17.
//  Copyright © 2017 Ana Calvo. All rights reserved.
//

import UIKit

class ProverbsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var proverbDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        background.layer.cornerRadius = 15
        background.layer.borderColor = UIColor(red: 0.47, green: 0.79, blue: 0.62, alpha: 1).cgColor
        background.layer.borderWidth = 2
   
    }

}

