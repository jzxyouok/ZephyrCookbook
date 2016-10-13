//
//  AYMainCellVM.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/13.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMainCellFrame: NSObject {
    
    private let titleFont: UIFont = UIFont.boldSystemFont(ofSize: 18)
    private let nameFont: UIFont = UIFont.systemFont(ofSize: 13)
    private let descFont: UIFont = UIFont.systemFont(ofSize: 14)
    private let iconW: CGFloat = 40
    private let leftMargin: CGFloat = 10
    
    var cellImageViewFrame: CGRect?
    var titleLabelFrame: CGRect?
    var iconViewFrame: CGRect?
    var nameLabelFrame: CGRect?
    var descLabelFrame: CGRect?
    
    var cellHeight: CGFloat?
    
    var mainData: AYMainData?{
        didSet{
            
            var imageH: CGFloat = 0
            if let imageRatio = mainData?.ratio as? CGFloat{
                imageH = AYScreamWidth * imageRatio
            }else{
                imageH = AYScreamWidth * CGFloat(340.0 / 640.0)
            }
            
            cellImageViewFrame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: imageH)
            AYLog(message: mainData?.ratio)
            var titleH: CGFloat = 0
            if let title = mainData?.title {
                let titleLabelSize = title.size(attributes: [NSFontAttributeName: titleFont])
                titleH = titleLabelSize.height
                titleLabelFrame = CGRect(x: 0, y: imageH, width: AYScreamWidth, height: titleLabelSize.height)
            }
            
            var iconH: CGFloat = 0
            if (mainData?.userAvatar) != nil{
                let iconY = imageH + titleH
                iconH = iconW
                iconViewFrame = CGRect(x: (AYScreamWidth - iconW) * 0.5, y: iconY, width: iconW, height: iconW)
            }
            
            var nameH: CGFloat = 0
            if let name = mainData?.userName {
                let nameY = imageH + titleH + iconH
                let nameLabelSize = name.size(attributes: [NSFontAttributeName: nameFont])
                nameH = nameLabelSize.height
                nameLabelFrame = CGRect(x: 0, y: nameY, width: AYScreamWidth, height: nameLabelSize.height)
            }
            
            var descH: CGFloat = 0
            if let desc = mainData?.desc {
                let descY = imageH + titleH + iconH + nameH
                let descW = AYScreamWidth - leftMargin * 2
                let descSize = desc.boundingRect(with: CGSize(width: descW, height: CGFloat(MAXFLOAT)), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName: descFont], context: nil)
                descH = descSize.height
                descLabelFrame = CGRect(x: leftMargin, y: descY, width: descW, height: descSize.height)
            }
            
            cellHeight = imageH + titleH + iconH + nameH + descH
            
        }
    }
    
    
    
    
    
}
