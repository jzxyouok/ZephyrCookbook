//
//  ViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit
import SDWebImage

class AYMainViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    lazy var bannerView: AYBannerVM = AYBannerVM()
    
    lazy var statuses: AYStatus = AYStatus()
    
    lazy var pageContr: UIPageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = true
        
        setUpBannerViewAPageContr()
    }

    private func setUpBannerViewAPageContr() {
        
        guard let bannerArr = statuses.bannerArr else {
            AYLog(message: "没有BanerArr的数据")
            return
        }
        
        bannerView.bannerArr = bannerArr
        bannerView.delegate = self
        mainScrollView.addSubview(bannerView)
        let size = pageContr.size(forNumberOfPages: bannerArr.count)
        AYLog(message: size)
        pageContr.frame = CGRect(x: (AYScreamWidth - size.width) * 0.5, y: bannerView.frame.height - 15, width: size.width, height: size.height)
        pageContr.currentPageIndicatorTintColor = UIColor.orange
        pageContr.pageIndicatorTintColor = UIColor.gray
        pageContr.currentPage = 0
        mainScrollView.addSubview(pageContr)
    }
    
}

extension AYMainViewController: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
}
