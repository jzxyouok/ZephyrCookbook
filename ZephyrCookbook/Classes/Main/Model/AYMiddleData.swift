//
//  AYMiddleData.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/10.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMiddleData: NSObject {
    //菜谱图片
    var imgs: String?
    //标题
    var title: String?
    //描述
    var desc: String?
    
    // MARK:字典转模型
    private class func middleDataWithDict(dict: [String: Any]) -> AYMiddleData{
        let middleData = AYMiddleData()
        middleData.setValuesForKeys(dict)
        return middleData
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
    class func middleDataArrWithArray(array: [[String: Any]]) -> [AYMiddleData]{
        var tmpArr = [AYMiddleData]()
        for dict in array {
            let titleData = self.middleDataWithDict(dict: dict)
            tmpArr.append(titleData)
        }
        return tmpArr
    }

}
