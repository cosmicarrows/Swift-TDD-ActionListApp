//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Laurence Wingo on 5/17/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation
import UIKit

class ItemListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataProvider: ItemListDataProvider!
    
    override func viewDidLoad() {
        tableView.dataSource = dataProvider
    }
    
    
}
