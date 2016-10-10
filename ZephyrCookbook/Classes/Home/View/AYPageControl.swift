//
//  AYPageControl.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYPageControl: UIPageControl {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let bannerArr = AYStatusTool.shareInstance.bannerArr
        
        currentPageIndicatorTintColor = UIColor.orange
        pageIndicatorTintColor = UIColor.lightGray
        currentPage = 0
        numberOfPages = (bannerArr?.count)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
