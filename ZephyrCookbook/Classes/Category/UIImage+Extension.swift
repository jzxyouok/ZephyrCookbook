//
//  UIImage+Extension.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/13.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

extension UIImage{
    class func stretchedImage(image: UIImage) -> UIImage {
        let newImage = image.stretchableImage(withLeftCapWidth: Int(image.size.width * 0.5 - 1), topCapHeight: Int(image.size.height * 0.5) - 1)
        return newImage
    }
    
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
}
