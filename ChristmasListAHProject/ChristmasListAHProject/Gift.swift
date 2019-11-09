//
//  Gift.swift
//  ChristmasListAHProject
//
//  Created by Alex Rhodes on 11/9/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation

// Enums help to organize data

enum Color: String {
    case black
    case white
    case brown
    case grey
    case red
    case other
    
}

enum Category: String {
    case homeGoods
    case electronics
    case clothes
    case shoes
    case other
}

struct Gift {
    let giftName: String
    let price: Double
    let link: String?
    let color: Color?
    let category: Category?
    let details: String?
}
