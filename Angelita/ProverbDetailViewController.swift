//
//  ProverbDetailViewController.swift
//  Angelita
//
//  Created by Ana Calvo on 20/3/17.
//  Copyright © 2017 Ana Calvo. All rights reserved.
//

import UIKit

class ProverbDetailViewController: UIViewController {
    
    @IBOutlet weak var proverbDescription: UILabel!

    @IBOutlet weak var proverbMeaning: UILabel!
    
    @IBOutlet weak var seeOpposite: UIButton!
    
    var proverb: Proverb!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        proverbDescription.text = proverb.description
        proverbMeaning.text = proverb.meaning
        seeOpposite.isEnabled = proverb.hasOpposite
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
