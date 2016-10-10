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
    
    lazy var bannerView: AYBannerVM = AYBannerVM()
    
    lazy var pageContr: AYPageControl = AYPageControl()
    
    lazy var titleView: AYTitleView = AYTitleView()
    
    lazy var middleView: AYMiddleView = AYMiddleView()
    
    lazy var tableView: AYCookbookTableView = AYCookbookTableView()
    
    lazy var timer: Timer = {
        let timer = Timer(timeInterval: 5.0, target: self, selector: #selector(autoScrollBanner), userInfo: nil, repeats: true)
        return timer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AYLog(message: AYScreamWidth)
        
        automaticallyAdjustsScrollViewInsets = true
        
        setUpSubviews()
        
        RunLoop.current.add(timer, forMode: RunLoopMode.commonModes)
        
    }

    private func setUpSubviews() {
        
//        view.addSubview(mainScrollView)
        
        bannerView.delegate = self
        view.addSubview(bannerView)
        
        let size = pageContr.size(forNumberOfPages: (AYStatusTool.shareInstance.bannerArr?.count)!)
        pageContr.frame = CGRect(x: (AYScreamWidth - size.width) * 0.5, y: AYBannerViewHeight - 35, width: size.width, height: size.height)
        
        view.insertSubview(pageContr, aboveSubview: bannerView)
        view.addSubview(titleView)
        
        middleView.frame = CGRect(x: 0, y: titleView.frame.maxY + 10, width: AYScreamWidth, height: 50)
        view.addSubview(middleView)
    }
    
    @objc private func autoScrollBanner() {
        guard let count = AYStatusTool.shareInstance.bannerArr?.count else{
            return
        }
        let page = Int(bannerView.contentOffset.x / AYScreamWidth)
        if page == count + 1{
            pageContr.currentPage = 1
            bannerView.contentOffset = CGPoint(x: AYScreamWidth, y: 0)
        }else if page == count{
            pageContr.currentPage = 0
        }else {
            pageContr.currentPage = page
        }
        bannerView.setContentOffset(CGPoint(x: bannerView.contentOffset.x + AYScreamWidth, y: 0), animated: true)
    }
    
}

extension AYHomeViewController: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        guard let count = AYStatusTool.shareInstance.bannerArr?.count else{
            return
        }
        let page = Int((scrollView.contentOffset.x + AYScreamWidth * 0.5) / AYScreamWidth) - 1
        if page == count + 1 {
            pageContr.currentPage = 0
            bannerView.contentOffset = CGPoint(x: AYScreamWidth, y: 0)
        }else if page == -1{
            pageContr.currentPage = count - 1
            bannerView.contentOffset = CGPoint(x: AYScreamWidth * CGFloat(count), y: 0)
        }else{
            pageContr.currentPage = page
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        timer.invalidate()
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        RunLoop.current.add(timer, forMode: RunLoopMode.commonModes)
    }
}
