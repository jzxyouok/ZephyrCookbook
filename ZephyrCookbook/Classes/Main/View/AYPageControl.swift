//
//  AYPageControl.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYPageControl: UIPageControl {

    var bannerArr: [AYBannerData]?{
        didSet{
            numberOfPages = (bannerArr?.count)!
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        currentPageIndicatorTintColor = UIColor.orange
        pageIndicatorTintColor = UIColor.lightGray
        currentPage = 0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
