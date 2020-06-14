//
//  MenuItemTableViewCell.swift
//  Menu
//
//  Created by Mac on 6/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit


class MenuItemTableViewCell: UITableViewCell {

    @IBOutlet weak var MenuImageView: UIImageView!
    
    @IBOutlet weak var MenuName: UILabel!
    
    @IBOutlet weak var MenuDetail: UILabel!
    
    @IBOutlet weak var MenuPrice: UILabel!

    var optionalMenuItem: MenuItem?
    @IBAction func addToCart(_ sender: Any) {
        guard let itemList = optionalMenuItem else {return}
        shoppingCart.addToCart(items: itemList)
      //  didItAddToCart()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(imageName: String,
                   name: String,
                   details: String,
                   prices: Int){
        MenuImageView.image = UIImage(named: imageName)
        MenuName.text = name
        MenuDetail.text = details
        MenuPrice.text = "฿ \(prices.isItComma())"
    }
    func setup(item: MenuItem){
        self.optionalMenuItem = item
    }
    
  //  func didItAddToCart() {
    //    let alertController = UIAlertController(title: "Success", message: "This menu has been add to cart", preferredStyle: .alert)
      //  let confirmAction = UIAlertAction(title: "Confirm", style: .cancel, handler: nil)
        //alertController.addAction(confirmAction)
        //present(alertController,animated: true,completion: nil)
    //}

    
}
extension Int {
    func isItComma() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}
