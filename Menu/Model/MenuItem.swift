//
//  File.swift
//  Menu
//
//  Created by Mac on 6/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation
class MenuItem {
    var name : String
    var detail : String
    var imageName : String
    var numberOfLike : Int
    init (name: String,
          detail: String,
          imageName: String,
          numberOfLike: Int){
        self.name = name
        self.detail = detail
        self.imageName = imageName
        self.numberOfLike = numberOfLike
    }
}
