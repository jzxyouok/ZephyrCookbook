//
//  AYMainScrollView.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMainScrollView: UIScrollView {

    override init(frame: CGRect){
        super.init(frame: frame)
        
        isScrollEnabled = true
        showsHorizontalScrollIndicator = false
        isUserInteractionEnabled = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        frame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: UIScreen.main.bounds.height)
        contentSize = CGSize(width: AYScreamWidth, height: frame.height * 2)
    }
    
}
