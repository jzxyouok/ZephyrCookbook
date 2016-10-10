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
    
    lazy var pageContr: AYPageControl = AYPageControl()
    
    lazy var timer: Timer = {
        let timer = Timer(timeInterval: 5.0, target: self, selector: #selector(autoScrollBanner), userInfo: nil, repeats: true)
        return timer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = true
        
        setUpBannerViewAPageContr()
        
        RunLoop.current.add(timer, forMode: RunLoopMode.commonModes)
        
    }

    private func setUpBannerViewAPageContr() {
        
        guard let bannerArr = AYStatusTool.shareInstance.bannerArr else {
            AYLog(message: "没有BanerArr的数据")
            return
        }
        bannerView.bannerArr = bannerArr
        bannerView.delegate = self
        mainScrollView.addSubview(bannerView)
        pageContr.bannerArr = bannerArr
        let size = pageContr.size(forNumberOfPages: bannerArr.count)
        pageContr.frame = CGRect(x: (AYScreamWidth - size.width) * 0.5, y: bannerView.bounds.height - 15, width: size.width, height: size.height)
        view.insertSubview(pageContr, aboveSubview: bannerView)
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

extension AYMainViewController: UIScrollViewDelegate{
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