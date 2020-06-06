//
//  MenuTableViewController.swift
//  Menu
//
//  Created by Kittinun Chobtham on 6/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    override func tableView(_ tableView: UITableView,
    cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemIdentifier", for: indexPath) as! MenuItemTableViewCell


        let menu = menuItem[indexPath.row]
        cell.configure(imageName: menu.imageName,
                       name: menu.name,
                       details: menu.detail,
                       numberOfLikes: menu.numberOfLike)
        return cell
    }
    
}

