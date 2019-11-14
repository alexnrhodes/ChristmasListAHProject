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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addGiftbuttonTapped(_ sender: UIButton) {
    }
}
