//
//  AYProfileViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/12.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYProfileViewController: UITableViewController {

    lazy var headerView: AYHeaderView = AYHeaderView()
    let headerHeight: CGFloat = 300
    let speed: CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundColor = UIColor.clear
        view.insertSubview(headerView, at: 0)
        tableView.contentInset = UIEdgeInsetsMake(headerView.frame.height, 0, 0, 0)
        AYLog(message: headerView.frame)
        AYLog(message: view.frame)
        automaticallyAdjustsScrollViewInsets = false
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "tableView"
        return cell
    }

    
}

