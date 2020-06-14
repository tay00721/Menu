//
//  MenuViewController.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var userNameLabel: UILabel!
    var userName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView,
                                numberOfRowsInSection section: Int) -> Int {
            return menuItem.count
        }
        func tableView(_ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemIdentifier", for: indexPath) as! MenuItemTableViewCell


            let menu = menuItem[indexPath.row]
            cell.configure(imageName: menu.imageName,
                           name: menu.name,
                           details: menu.detail,
                           prices: menu.price)
            return cell
        }
        //func userNameOnMenu (userName: String?) {
         //       guard let named = userName else {return}
         //       userNameLabel?.text = named
//    }
    override func viewDidAppear(_ animated: Bool) {
        userNameLabel.text! = userName
    }
    
}
