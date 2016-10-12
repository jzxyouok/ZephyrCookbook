//
//  AYHeaderView.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/12.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
        setUpSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpSubviews() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: AYScreamWidth, height: 300))
        imageView.image = #imageLiteral(resourceName: "bannerImage")
        addSubview(imageView)
        frame = CGRect(x: 0, y: -300, width: AYScreamWidth, height: 300)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
}
