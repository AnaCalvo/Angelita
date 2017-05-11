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
    
    @IBOutlet weak var seeOppositeLabel: UILabel!
    
    @IBAction func showOpposite(_ sender: UIButton) {
        
        showingOpposite ? showMeaning() : viewOpposite()
        
        UIView.transition(with: detail_background, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {self.detail_background.isHidden = false})
        
    }
    
    var proverb: Proverb!
    var proverbOpposite: Proverb?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        proverbDescription.text = proverb.description
        proverbMeaning.text = proverb.meaning
        seeOpposite.isEnabled = proverb.hasOpposite
        detail_background.layer.cornerRadius = 15
        
        seeOpposite.addTarget(self, action: #selector(pressButton(button:)), for: .touchUpInside)
        
        if !proverb.hasOpposite {
            seeOppositeLabel.textColor = UIColor(red: 0.28, green: 0.45, blue: 0.39, alpha: 1)
        }
        
    }
    

    func pressButton(button: UIButton) {
        //TODO
    }
    
    func showMeaning() {
        proverbDescription.text = proverb.description
        proverbMeaning.text = proverb.meaning
        seeOpposite.setImage(UIImage(named:"opposite"), for: UIControlState.normal)
        showingOpposite = false
    }
    
    func viewOpposite() {
        proverbDescription.text = proverbOpposite?.description
        proverbMeaning.text = proverbOpposite?.meaning
        seeOpposite.setImage(UIImage(named:"opposite_reverse"), for: UIControlState.normal)
        showingOpposite = true
    }
    
}

