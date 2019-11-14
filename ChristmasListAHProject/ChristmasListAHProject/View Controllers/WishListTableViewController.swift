//
//  WishListTableViewController.swift
//  ChristmasListAHProject
//
//  Created by Alex Rhodes on 11/9/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class WishListTableViewController: UITableViewController {
    
    let santasWorkshop = SantasWorkshop()
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return santasWorkshop.giftBag.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GiftCell", for: indexPath)
        
        let gift = santasWorkshop.giftBag[indexPath.row]
        
        cell.textLabel?.text = gift.giftName
        cell.detailTextLabel?.text = "Category: \(gift.category)"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddGiftSegue" {
            guard let destinationVC = segue.destination as? AddGiftViewController else {return}
            destinationVC.santasWorshop = self.santasWorkshop
        } else if segue.identifier == "GiftDetailSegue" {
            guard let destinationVC = segue.destination as? GiftDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {return}
            destinationVC.santasWorkshop = self.santasWorkshop
            destinationVC.gift = santasWorkshop.giftBag[indexPath.row]
        }
    }
}
