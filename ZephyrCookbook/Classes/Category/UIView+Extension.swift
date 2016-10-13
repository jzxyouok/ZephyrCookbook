//
//  UIView+Extension.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/13.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit
import ObjectiveC.runtime

extension UIView{
    
    var x: CGFloat{
        set{
            self.x = self.frame.origin.x
        }
        get{
            return self.frame.origin.x
        }
    }
    var y: CGFloat{
        set{
            self.y = self.frame.origin.y
        }
        get{
            return self.frame.origin.y
        }
    }
}

