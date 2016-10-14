//
//  UIImage+Extension.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/13.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

extension UIImage{
    //拉伸图片
    class func stretchedImage(image: UIImage) -> UIImage {
        let newImage = image.stretchableImage(withLeftCapWidth: Int(image.size.width * 0.5 - 1), topCapHeight: Int(image.size.height * 0.5) - 1)
        return newImage
    }
    //将方形图片绘制成圆形图片
    class func circleImage(with image: UIImage) -> UIImage{
        
        let rect = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        guard let context = UIGraphicsGetCurrentContext() else{
            return image
        }
        UIGraphicsBeginImageContextWithOptions(image.size, false, 0.0)
        
        context.addEllipse(in: rect)
        context.clip()
        image.draw(in: rect)
        
        guard let newImage = UIGraphicsGetImageFromCurrentImageContext() else{
            UIGraphicsEndImageContext()
            return image
        }
        return newImage
    }
    //改变图片大小
    class func changeImageSize(from image: UIImage, toSize size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        image.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        guard let newImage = UIGraphicsGetImageFromCurrentImageContext() else {
            return image
        }
        UIGraphicsEndImageContext()
        return newImage
    }
}
