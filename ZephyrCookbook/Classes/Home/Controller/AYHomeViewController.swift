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
    
    lazy var navigationBar: AYNavigationBar = AYNavigationBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.view.insertSubview(navigationBar, belowSubview: (navigationController?.navigationBar)!)
        navigationController?.navigationBar.isHidden = true
        
        navigationBar.textfield?.delegate = self
        
        automaticallyAdjustsScrollViewInsets = true
        
        view.addSubview(mainScrollView)
        
    }
   
}

extension AYHomeViewController: UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        navigationController?.present(AYSearchViewController(), animated: true, completion: nil)
        
        return false
    }
}
