//
//  SantasWorkshop.swift
//  ChristmasListAHProject
//
//  Created by Alex Rhodes on 11/12/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import Foundation


class SantasWorkshop {
    
    var giftBag: [Gift] = [] // storing gifts here to show them more about how all of the files communicate.
    
    
    // using create to get them familiar with CRUD without actually telling them about CRUD
    func createGift(giftName: String, price: Double, link: String, color: String, category: String, details: String) {
        
        let gift = Gift(giftName: giftName, price: price, link: link, color: color, category: category, details: details)
        
        giftBag.append(gift)
    }
}
