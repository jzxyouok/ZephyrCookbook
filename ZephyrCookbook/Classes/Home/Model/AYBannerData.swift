//
//  AYBannerData.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYBannerData: NSObject {

    //菜谱图片
    var imgs: String?
    //标题
    var title: String?
    
    // MARK: 字典转模型
    private class func bannerDataWithDict(dict: [String: Any]) -> AYBannerData{
        let bannerData = AYBannerData()
        bannerData.setValuesForKeys(dict)
        return bannerData
    }
    
    // MARK: 处理模型中没有字典Key的情况
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
    // MARK: 过滤字典里的Value
    override func setValue(_ value: Any?, forKey key: String) {
        if value is [Any] {
            if key == "imgs"{
                imgs = (value as! [String]).first
            }
            return
        }
        super.setValue(value, forKey: key)
    }
    
    // MARK: 获取数据数组
    class func bannerDataArrWithArray(array: [[String: Any]]) -> [AYBannerData]{
        var tmpArr = [AYBannerData]()
        for dict in array {
            let bannerData = self.bannerDataWithDict(dict: dict)
            tmpArr.append(bannerData)
        }
        return tmpArr
    }
}
