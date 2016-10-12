//
//  ViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit
import SDWebImage

class AYHomeViewController: UIViewController {
    
    lazy var mainScrollView: AYMainScrollView = AYMainScrollView()
    
    lazy var navigationBar: AYNavigationBar = {
        let navigationBar = AYNavigationBar()
        let rightButton = UIButton(type: UIButtonType.custom)
        rightButton.setImage(#imageLiteral(resourceName: "icon_index_fenlei_black"), for: UIControlState.normal)
        rightButton.sizeToFit()
        rightButton.addTarget(self, action: #selector(pushToCategoryViewController), for: UIControlEvents.touchUpInside)
        navigationBar.textfield?.rightView = rightButton
        navigationBar.textfield?.rightViewMode = UITextFieldViewMode.always
        return navigationBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        backItem.image = #imageLiteral(resourceName: "btn_header_back")
        navigationController?.navigationItem.backBarButtonItem = backItem
        view.addSubview(mainScrollView)
        view.addSubview(navigationBar)
        navigationBar.textfield?.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc private func pushToCategoryViewController() {
        navigationController?.pushViewController(AYCategoryTableViewController(), animated: true)
    }
   
}

extension AYHomeViewController: UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        navigationController?.pushViewController(AYSearchViewController(), animated: false)
        
        return false
    }
}
