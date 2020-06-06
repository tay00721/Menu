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
    
    
    @IBOutlet weak var NumberOfLike: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(imageName: String,
                   name: String,
                   details: String,
                   numberOfLikes: Int){
        MenuImageView.image = UIImage(named: imageName)
        MenuName.text = name
        MenuDetail.text = details
        NumberOfLike.text = numberOfLikes.isItComma()
    }
    
}
extension Int {
    func isItComma() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}
