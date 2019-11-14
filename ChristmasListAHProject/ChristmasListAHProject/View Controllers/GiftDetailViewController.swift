//
//  GiftDetailViewController.swift
//  ChristmasListAHProject
//
//  Created by Alex Rhodes on 11/14/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class GiftDetailViewController: UIViewController {
    
    @IBOutlet weak var giftNameLabel: UILabel!
       @IBOutlet weak var priceLabel: UILabel!
       @IBOutlet weak var linkLabel: UILabel!
       @IBOutlet weak var colorLabel: UILabel!
       @IBOutlet weak var categoryLabel: UILabel!
       @IBOutlet weak var detailsLabel: UILabel!
    
    var santasWorkshop: SantasWorkshop?
    var gift: Gift?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func updateViews() {
        guard let gift = gift else {return}
        
        giftNameLabel.text = gift.giftName
        priceLabel.text = String(gift.price)
        linkLabel.text = gift.link
        colorLabel.text = gift.color
        categoryLabel.text = gift.category
        detailsLabel.text = gift.details
    
    }
}
