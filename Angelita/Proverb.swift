//
//  Proverb.swift
//  Angelita
//
//  Created by Ana Calvo on 16/3/17.
//  Copyright © 2017 Ana Calvo. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: Any]


struct Proverb {
    let id: Int
    let description: String
    let meaning: String
    let publishedAt: String
    let numberOfValidations: Int
    let hasOpposite: Bool
    let oppositeID: Int?
    
    init?(json: JSONDictionary) {
        
        guard
            let id = json["id"] as? Int,
            let description = json["description"] as? String,
            let meaning = json["meaning"] as? String,
            let publishedAt = json["publishedAt"] as? String,
            let numberOfValidations = json["numberOfValidations"] as? Int,
            let hasOpposite = json["hasOpposite"] as? Bool
            else {fatalError("Something is going wrong")}
        
        self.id = id
        self.description = description
        self.meaning = meaning
        self.publishedAt = publishedAt
        self.numberOfValidations = numberOfValidations
        self.hasOpposite = hasOpposite
        self.oppositeID = json["oppositeID"] as? Int
    }
}


class ProverbsManager {
    
    let delegate: ProverbsTableViewController
    
    public var proverbsArray: [Proverb] = []
    
    init(delegate: ProverbsTableViewController) {
        self.delegate = delegate
    }
    
    func getProverbs() {
        
        guard
            let url = Bundle.main.url(forResource: "proverbs", withExtension: "json"),
            let text = try? String(contentsOf: url),
            let data = text.data(using: .utf8),
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            else { return }
        
        
        if
            let dictionary = json as? JSONDictionary,
            let data = dictionary["data"] as? [JSONDictionary] {
            
            for proverbJSON in data {
                
                if let proverbInstance = Proverb(json: proverbJSON) {
                    
                    proverbsArray.append(proverbInstance)
                }
                
            }
            
        }
        
         self.delegate.refresh()
    }
    
    
    func showProverb(id: Int) -> Proverb? {
        
        for proverb in proverbsArray {
            
            if proverb.id == id {
                return proverb
            }
        }
        
        return nil
    }

}



