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
   
    }
    


}

