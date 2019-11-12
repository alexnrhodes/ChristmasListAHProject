//
//  Gift.swift
//  ChristmasListAHProject
//
//  Created by Alex Rhodes on 11/9/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation
import UIKit
// Enums help to organize data

// Enums are a stretch goal.

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
//    let image: UIImage?
    let giftName: String // UIAlert
    let price: Double // UIAlert
    let link: String
    let color: String
    let category: String
    let details: String
}
