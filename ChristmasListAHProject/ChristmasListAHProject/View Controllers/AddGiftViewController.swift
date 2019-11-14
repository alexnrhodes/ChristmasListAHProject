//
//  AddGiftViewController.swift
//  ChristmasListAHProject
//
//  Created by Alex Rhodes on 11/9/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class AddGiftViewController: UIViewController {
    
    @IBOutlet weak var giftNameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var linkTextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var categoryTextField: UITextField!
    @IBOutlet weak var detailsTextField: UITextField!
    @IBOutlet weak var addGiftButton: UIButton!
    
    var santasWorshop: SantasWorkshop?
    var gift: Gift?
    
    @IBAction func addGiftbuttonTapped(_ sender: UIButton) {
        
        guard let workshop = santasWorshop,
            let name = giftNameTextField.text,
            let priceText = priceTextField.text,
            let link = linkTextField.text,
            let color = colorTextField.text,
            let category = categoryTextField.text,
            let details = detailsTextField.text,
            let price = Double(priceText) else {return}
        
        workshop.createGift(giftName: name, price: Double(price), link: link, color: color, category: category, details: details)
        
    }
}
