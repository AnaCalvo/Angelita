//
//  ProverbsTableViewController.swift
//  Angelita
//
//  Created by Ana Calvo on 17/3/17.
//  Copyright © 2017 Ana Calvo. All rights reserved.
//

import UIKit

class ProverbsTableViewController: UITableViewController {
    
    var proverbs: ProverbsManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        proverbs = ProverbsManager(delegate: self)
        proverbs.getProverbs()
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return proverbs.proverbsArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! ProverbsTableViewCell
        
        let proverb = proverbs.proverbsArray[indexPath.row]
        
        cell.proverbDescription?.text = proverb.description
        
        return cell
        
    }
    
    func refresh() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? ProverbDetailViewController {
            
            let selectedProverb = proverbs.proverbsArray[tableView.indexPathForSelectedRow!.row]
            destination.proverb = selectedProverb
            
            if let oppositeID = selectedProverb.oppositeID {
                let oppositeProverb = proverbs.showProverb(id: oppositeID)
                destination.proverbOpposite = oppositeProverb
            }
        }
        
    }
    
}
