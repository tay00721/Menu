//
//  ItemListsTableViewCell.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class ItemListsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkoutListsLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(name: String,
                   prices: Int,
                   quantity: Int){
        checkoutListsLabel.text = name
        priceLabel.text = "฿ \(prices)"
        quantityLabel.text = "x \(quantity)"
    }
    
}
