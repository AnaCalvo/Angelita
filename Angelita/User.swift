//
//  User.swift
//  Angelita
//
//  Created by Ana Calvo on 16/3/17.
//  Copyright © 2017 Ana Calvo. All rights reserved.
//

import Foundation

struct User {
    let photo: URL
    let name: String
    let lastname: String
    let id: Int
    let email: String
    let password: String
    let favoriteList: [Proverb]
    let publishedList: [Proverb]
    let rank: Int
}
