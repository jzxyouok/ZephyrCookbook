//
//  ViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit
import SDWebImage

class AYHomeViewController: UITableViewController {
    
    private lazy var headerView: AYHomeHeaderView = AYHomeHeaderView()
    
    private lazy var navigationBar: AYNavigationBar = {
        let navigationBar = AYNavigationBar()
        let rightButton = UIButton(type: UIButtonType.custom)
        rightButton.setImage(#imageLiteral(resourceName: "icon_index_fenlei_black"), for: UIControlState.normal)
        rightButton.sizeToFit()
        rightButton.addTarget(self, action: #selector(pushToCategoryViewController), for: UIControlEvents.touchUpInside)
        navigationBar.textfield?.rightView = rightButton
        navigationBar.textfield?.rightViewMode = UITextFieldViewMode.always
        var naviFrame = navigationBar.frame
        naviFrame.origin.y -= self.headerView.frame.size.height
        navigationBar.frame = naviFrame
        return navigationBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(colorLiteralRed: 241 / 255.0, green: 239 / 255.0, blue: 241 / 255.0, alpha: 1)
        view.insertSubview(headerView, at: 0)
        view.addSubview(navigationBar)
        navigationBar.textfield?.delegate = self
        tableView.contentInset = UIEdgeInsets(top: headerView.frame.size.height, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc private func pushToCategoryViewController() {
        navigationController?.pushViewController(AYCategoryTableViewController(), animated: true)
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

extension AYHomeViewController: UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        navigationController?.pushViewController(AYSearchViewController(), animated: false)
        
        return false
    }
}
