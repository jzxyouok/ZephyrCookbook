//
//  AYTitleView.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit
import SDWebImage

class AYTitleView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        setUpSubViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpSubViews() {
        
        guard let titleDataArr = AYStatusTool.shareInstance.titleArr else{
            AYLog(message: "没有加载到标题数据")
            return
        }
        let count = CGFloat(titleDataArr.count)
        let leftMargin: CGFloat = 20
        let margin: CGFloat = 20
        let ratio: CGFloat = 1.8
        
        let width = (AYScreamWidth - leftMargin * 2 - margin * (count - 1)) / count
        let height = width * ratio
        for (index, titleData) in titleDataArr.enumerated() {
            //设置中间每个小块View
            let singleX = CGFloat(index) * (width + margin) + leftMargin
            let middleSingleView = UIView(frame: CGRect(x: singleX, y: 0, width: width, height: height))
            //设置图片View
            let iconRatio: CGFloat = 0.7
            let iconW: CGFloat = width * iconRatio
            let iconH: CGFloat = iconW
            let iconX: CGFloat = width * (1 - iconRatio) / 2
            let iconY: CGFloat = iconX
            let iconView = UIImageView(frame: CGRect(x: iconX, y: iconY, width: iconW, height: iconH))
            let imageName = String(format: "title%d", index + 1)
            iconView.image = UIImage(named: imageName as String)
            //设置文字View
            let titleLabel = UILabel()
            titleLabel.text = titleData.title
            titleLabel.textAlignment = NSTextAlignment.center
            titleLabel.font = UIFont.systemFont(ofSize: 13)
            titleLabel.sizeToFit()
            titleLabel.frame = CGRect(x: 0, y: height - width, width: width, height: height - width)
            middleSingleView.addSubview(iconView)
            middleSingleView.addSubview(titleLabel)
            addSubview(middleSingleView)
        }
        frame = CGRect(x: 0, y: AYBannerViewHeight, width: AYScreamWidth, height: height - 10)
    }
}
