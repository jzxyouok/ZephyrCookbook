//
//  AYBannerView.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYBannerVM: UIScrollView {

    var bannerArr: [AYBannerData]?{
        didSet{
            
            var ratio:CGFloat = 0
            
            if let bannerImage = UIImage(named: "bannerImage"){
                ratio = bannerImage.size.height / bannerImage.size.width
            }else{
                ratio = 39.0 / 64.0 as CGFloat
            }
            let height = AYScreamWidth * ratio
            
            contentSize = CGSize(width: AYScreamWidth * CGFloat((bannerArr?.count)! + 2), height: height)
            
            let firstImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: AYScreamWidth, height: height))
            guard let firstImageURLStr = bannerArr?[0].imgs else {
                AYLog(message: "没有加载到第一张图片")
                return
            }
            firstImageView.sd_setImage(with: URL(string: firstImageURLStr))
            addSubview(firstImageView)
            
            let lastImageView = UIImageView(frame: CGRect(x: AYScreamWidth * CGFloat((bannerArr?.count)! + 1), y: 0, width: AYScreamWidth, height: height))
            guard let lastImageURLStr = bannerArr?.last?.imgs else {
                AYLog(message: "没有加载到最后一张图片")
                return }
            lastImageView.sd_setImage(with: URL(string: lastImageURLStr))
            addSubview(lastImageView)
            
            frame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: height)
            for (index, bannerData) in (bannerArr?.enumerated())! {
                let bannerImageView = UIImageView(frame: CGRect(x: CGFloat(index + 1) * AYScreamWidth, y: 0, width: AYScreamWidth, height: height))
                guard let bannerImageURLStr = bannerData.imgs else {
                    AYLog(message: "没有加载到banner图片")
                    return }
                bannerImageView.sd_setImage(with: URL(string: bannerImageURLStr))
                addSubview(bannerImageView)
            }
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        isScrollEnabled = true
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        isScrollEnabled = true
        bounces = false
        isPagingEnabled = true
        isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
