//
//  ProverbDetailViewController.swift
//  Angelita
//
//  Created by Ana Calvo on 20/3/17.
//  Copyright © 2017 Ana Calvo. All rights reserved.
//

import UIKit

class ProverbDetailViewController: UIViewController {
    
    var showingOpposite = false
    
    @IBOutlet weak var detail_background: UIView!
    
    @IBOutlet weak var proverbDescription: UILabel!

    @IBOutlet weak var proverbMeaning: UILabel!
    
    @IBOutlet weak var seeOpposite: UIButton!
    
    
    @IBAction func showOpposite(_ sender: UIButton) {
        
        showingOpposite ? showMeaning() : viewOpposite()
    }
    
    var proverb: Proverb!
    var proverbOpposite: Proverb?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        proverbDescription.text = proverb.description
        proverbMeaning.text = proverb.meaning
        seeOpposite.isEnabled = proverb.hasOpposite
        detail_background.layer.cornerRadius = 15
    }

    func showMeaning() {
        proverbDescription.text = proverb.description
        showingOpposite = false
    }
    
    func viewOpposite() {
         proverbDescription.text = proverbOpposite?.description
         proverbMeaning.text = proverbOpposite?.meaning
         showingOpposite = true
   }

}
