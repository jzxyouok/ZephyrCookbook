//
//  AYNavigationBar.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit


class AYNavigationBar: UIView {
    
    var textfield: UITextField?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpSubviews() {
        
        let leftMargin: CGFloat = 20
        let topMargin: CGFloat = 25
        let tfW: CGFloat = AYScreamWidth - leftMargin * 2
        let tfH: CGFloat = 30
        let tfX: CGFloat = leftMargin
        let tfY: CGFloat = topMargin
        
        let searchTextfield = UITextField(frame: CGRect(x: tfX, y: tfY, width: tfW, height: tfH))
        searchTextfield.layer.cornerRadius = 5
        searchTextfield.layer.masksToBounds = true
        let searchView = UIImageView(image: #imageLiteral(resourceName: "homeSearch"))
        searchView.contentMode = UIViewContentMode.center
        searchTextfield.leftView = searchView
        searchTextfield.leftViewMode = UITextFieldViewMode.always
        searchTextfield.text = "菜谱、专辑、豆友"
        searchTextfield.font = UIFont.systemFont(ofSize: 13)
        searchTextfield.textRect(forBounds: CGRect(x: 50, y: 0, width: tfW - 20, height: 15))
        searchTextfield.textColor = UIColor.black
        searchTextfield.background = UIImage.stretchedImage(image: #imageLiteral(resourceName: "bg_header_search"))
        searchTextfield.alpha = 0.5
        
        
        textfield = searchTextfield
        addSubview(searchTextfield)
        
        frame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: 64)
    }
}

