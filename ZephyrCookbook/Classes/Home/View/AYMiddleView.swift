//
//  AYMiddleView.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMiddleView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.clear
        
        setUpSubviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpSubviews() {
        
        let margin: CGFloat = 5
        
        let leftW = (AYScreamWidth - margin) * 0.5
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: leftW, height: leftW))
        let leftImageView = UIImageView()
        leftImageView.frame = leftView.bounds
        leftView.addSubview(leftImageView)
        leftView.backgroundColor = UIColor.green
        
        let rightH = (leftW - margin) * 0.5
        let rightTopView = UIView(frame: CGRect(x: leftW + margin, y: 0, width: leftW, height: rightH))
        let rightTopImageView = UIImageView()
        rightTopImageView.frame = rightTopView.bounds
        rightTopView.addSubview(rightTopImageView)
        rightTopView.backgroundColor = UIColor.green
        
        let rightBottomLeftView = UIView(frame: CGRect(x: leftW + margin, y: rightH + margin, width: rightH, height: rightH))
        let rightBottomLeftImageView = UIImageView()
        rightBottomLeftImageView.frame = rightBottomLeftView.bounds
        rightBottomLeftView.addSubview(rightBottomLeftImageView)
        rightBottomLeftView.backgroundColor = UIColor.green
        
        let rightBottomRightView = UIView(frame: CGRect(x: rightBottomLeftView.frame.maxX + margin, y: rightH + margin, width: rightH, height: rightH))
        let rightBottomRightImageView = UIImageView()
        rightBottomRightImageView.frame = rightBottomRightView.bounds
        rightBottomRightView.addSubview(rightBottomRightImageView)
        rightBottomRightView.backgroundColor = UIColor.green
        
        addSubview(leftView)
        addSubview(rightTopView)
        addSubview(rightBottomLeftView)
        addSubview(rightBottomRightView)
        
        let bottomW = (AYScreamWidth - margin * 2) / 3
        let bottomContainerView = UIView(frame: CGRect(x: 0, y: leftW + margin * 2, width: AYScreamWidth, height: bottomW + margin * 5))
        bottomContainerView.backgroundColor = UIColor.white
        for i in 0..<3 {
            let bottomView = UIView(frame: CGRect(x: CGFloat(i) * (bottomW + margin), y: margin, width: bottomW, height: bottomW))
            bottomView.backgroundColor = UIColor.green
            let imageName = String(format: "middle%d", i + 1)
            let bottomImageView = UIImageView(frame: bottomView.bounds)
            bottomImageView.image = UIImage(named: imageName)
            bottomView.addSubview(bottomImageView)
            bottomContainerView.addSubview(bottomView)
        }
        
        addSubview(bottomContainerView)
        
        let middleDataArr = AYStatusTool.shareInstance.middleArr
        for (index, middleData) in (middleDataArr?.enumerated())! {
            switch index {
            case 0:
                leftImageView.sd_setImage(with: URL(string: middleData.imgs!), placeholderImage: #imageLiteral(resourceName: "default_p210"))
            case 1:
                rightTopImageView.sd_setImage(with: URL(string: middleData.imgs!), placeholderImage: #imageLiteral(resourceName: "default_r172-118"))
            case 2:
                rightBottomLeftImageView.sd_setImage(with: URL(string: middleData.imgs!), placeholderImage: #imageLiteral(resourceName: "default_p110"))
            default:
                rightBottomRightImageView.sd_setImage(with: URL(string: middleData.imgs!), placeholderImage: #imageLiteral(resourceName: "default_p110"))
            }
        }
        
        let middleH = bottomContainerView.frame.maxY
        frame = CGRect(x: 0, y: 0, width: AYScreamWidth, height: middleH)
        
    }
    
}
