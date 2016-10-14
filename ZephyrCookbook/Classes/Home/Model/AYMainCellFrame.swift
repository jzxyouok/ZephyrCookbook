//
//  AYMainCellVM.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/13.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMainCellFrame: NSObject {
    
    private let iconW: CGFloat = 40
    private let leftMargin: CGFloat = 20
    private let topMargin: CGFloat = 10
    private let bottomMargin: CGFloat = 25
    
    var cellImageViewFrame: CGRect?
    var titleLabelFrame: CGRect?
    var iconViewFrame: CGRect?
    var nameLabelFrame: CGRect?
    var descLabelFrame: CGRect?
    var containerFrame: CGRect?
    
    var cellHeight: CGFloat?
    
    var mainData: AYMainData?{
        didSet{
            
            var imageH: CGFloat = 200
            if let imageRatio = mainData?.ratio as? CGFloat{
                imageH = AYScreamWidth * imageRatio
            }else{
                imageH = AYScreamWidth * CGFloat(340.0 / 640.0)
            }
            cellImageViewFrame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: imageH)
            var titleH: CGFloat = 0
            if let title = mainData?.title {
                let titleLabelSize = title.size(attributes: [NSFontAttributeName: titleFont])
                titleH = titleLabelSize.height
                titleLabelFrame = CGRect(x: 0, y: imageH + topMargin, width: AYScreamWidth, height: titleLabelSize.height)
            }
            
            var iconH: CGFloat = 0
            if (mainData?.userAvatar) != nil{
                let iconY = imageH + titleH + topMargin * 2
                iconH = iconW
                iconViewFrame = CGRect(x: (AYScreamWidth - iconW) * 0.5, y: iconY, width: iconW, height: iconW)
            }
            
            var nameH: CGFloat = 0
            if let name = mainData?.userName {
                let nameY = imageH + titleH + iconH + topMargin * 3
                let nameLabelSize = name.size(attributes: [NSFontAttributeName: nameFont])
                nameH = nameLabelSize.height + topMargin * 2
                nameLabelFrame = CGRect(x: 0, y: nameY, width: AYScreamWidth, height: nameLabelSize.height)
            }
            
            var descH: CGFloat = 0
            if let desc = mainData?.desc {
                var descY: CGFloat = 0
                if iconH == 0 {
                    descY = imageH + titleH + topMargin * 2
                }else{
                    descY = imageH + titleH + iconH + nameH + topMargin * 2
                }
                let descW = AYScreamWidth - leftMargin * 2
                let descSize = desc.boundingRect(with: CGSize(width: descW, height: CGFloat(MAXFLOAT)), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName: descFont], context: nil)
                descH = descSize.height + topMargin * 2
                descLabelFrame = CGRect(x: leftMargin, y: descY, width: descW, height: descSize.height)
            }
            guard let descFrameMaxY = descLabelFrame?.maxY else {
                if iconH == 0 {
                    cellHeight = imageH + titleH + descH + topMargin * 5 + bottomMargin
                }else{
                    cellHeight = imageH + titleH + iconH + nameH + descH + topMargin * 5 + bottomMargin
                }
                return
            }
            cellHeight = descFrameMaxY + bottomMargin
            containerFrame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: cellHeight! - 5)
        }
    }
    
    
    
    
    
}
