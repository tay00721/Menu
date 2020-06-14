//
//  CheckListViewController.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class CheckListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView,
                                 numberOfRowsInSection section: Int) -> Int {
        return shoppingCart.cart.count
    }
    func tableView(_ tableView: UITableView,
         cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemListsIdentifier", for: indexPath) as! ItemListsTableViewCell
        let checkoutList = shoppingCart.cart[indexPath.row]
        cell.configure(name: checkoutList.name, prices: checkoutList.price, quantity: checkoutList.quantity)
        return cell
         }
}
