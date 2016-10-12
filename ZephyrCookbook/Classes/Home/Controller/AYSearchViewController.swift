//
//  AYSearchViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/11.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYSearchViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(navigationBar)
        
    }

    @objc private func popToPreViewController() {
        navigationController?.popViewController(animated: true)
    }
    

    lazy var navigationBar: AYNavigationBar = {
        let navigationBar = AYNavigationBar()
        //设置textField
        let textField = navigationBar.textfield
        navigationBar.textfield?.text = nil
        let buttonW: CGFloat = 50
        var tfFrame = navigationBar.textfield?.frame
        tfFrame?.size.width -= buttonW
        navigationBar.textfield?.frame = tfFrame!
        //设置取消按钮
        tfFrame?.size.width = buttonW
        tfFrame?.origin.x = (textField?.frame.maxX)!
        let button = UIButton(frame: tfFrame!)
        button.setTitle("取消", for: UIControlState.normal)
        button.setTitleColor(UIColor.orange, for: UIControlState.normal)
        button.addTarget(self, action: #selector(popToPreViewController), for: UIControlEvents.touchUpInside)
        navigationBar.addSubview(button)
        
        return navigationBar
    }()
}
