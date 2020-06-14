//
//  File.swift
//  Menu
//
//  Created by Mac on 6/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation
class MenuItem {
    var id : Int
    var name : String
    var detail : String
    var imageName : String
    var price : Int
    var quantity : Int = 1
    init (id: Int,
          name: String,
          detail: String,
          imageName: String,
          price: Int){
        self.id = id
        self.name = name
        self.detail = detail
        self.imageName = imageName
        self.price = price
    }
}
