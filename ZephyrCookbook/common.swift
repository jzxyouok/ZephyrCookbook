//
//  common.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

let AYScreamWidth = UIScreen.main.bounds.width

let AYBannerViewHeight = AYScreamWidth * 0.609375

extension UIImage{
    class func stretchedImage(image: UIImage) -> UIImage {
        let newImage = image.stretchableImage(withLeftCapWidth: Int(image.size.width * 0.5 - 1), topCapHeight: Int(image.size.height * 0.5) - 1)
        return newImage
    }
}
