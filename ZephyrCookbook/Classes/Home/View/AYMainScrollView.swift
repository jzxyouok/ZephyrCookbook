//
//  AYMainScrollView.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMainScrollView: UIScrollView {

    lazy var bannerView: AYBannerVM = AYBannerVM()
    
    lazy var pageContr: AYPageControl = AYPageControl()
    
    lazy var titleView: AYTitleView = AYTitleView()
    
    lazy var middleView: AYMiddleView = AYMiddleView()
    
    lazy var tableView: AYCookbookTableView = AYCookbookTableView()
    
    lazy var timer: Timer = {
        let timer = Timer(timeInterval: 5.0, target: self, selector: #selector(autoScrollBanner), userInfo: nil, repeats: true)
        return timer
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        isScrollEnabled = true
        showsHorizontalScrollIndicator = false
        isUserInteractionEnabled = true
        
        RunLoop.current.add(timer, forMode: RunLoopMode.commonModes)
        
        setUpSubviews()
    }
    
    deinit {
        timer.invalidate()
    }
    
    private func setUpSubviews() {
        
        addSubview(bannerView)
        bannerView.delegate = self
        
        let size = pageContr.size(forNumberOfPages: (AYStatusTool.shareInstance.bannerArr?.count)!)
        pageContr.frame = CGRect(x: -20, y: AYBannerViewHeight - 35, width: size.width, height: size.height)
        
        insertSubview(pageContr, aboveSubview: bannerView)
        addSubview(titleView)
        
        middleView.frame = CGRect(x: 0, y: titleView.frame.maxY + 10, width: AYScreamWidth, height: 50)
        addSubview(middleView)
        
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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        frame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: UIScreen.main.bounds.height)
        contentSize = CGSize(width: AYScreamWidth, height: frame.height * 2)
    }
    
}

extension AYMainScrollView: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        guard let count = AYStatusTool.shareInstance.bannerArr?.count else{
            return
        }
        let page = Int((scrollView.contentOffset.x + AYScreamWidth * 0.5) / AYScreamWidth)
        if page == count + 1 {
            pageContr.currentPage = 0
            bannerView.contentOffset = CGPoint(x: AYScreamWidth, y: 0)
        }else if page == 0{
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
