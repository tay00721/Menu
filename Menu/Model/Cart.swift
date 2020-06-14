//
//  Cart.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

class ShoppingCart {
    
    var cart: [MenuItem] = []
    func addToCart(items : MenuItem){
        let isContain = cart.contains{ $0.id == items.id }
        if isContain {
            cart = cart.map({ (oldItem) -> MenuItem in
                if oldItem.id == items.id {
                   oldItem.quantity = oldItem.quantity + 1
                return oldItem
            }
            return oldItem
            })
            return
            }
            cart.append(items)
        }        
}
