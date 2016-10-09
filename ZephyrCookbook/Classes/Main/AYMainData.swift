//
//  AYMainData.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYMainData: NSObject {

    //菜谱图片
    var imgs: String?
    //描述
    var desc: String?
    //标题
    var title: String?
    //用户头像
    var userAvatar: String?
    
    // MARK:字典转模型
    private class func mainDataWithDict(dict: [String: Any]) -> AYMainData{
        let mainData = AYMainData()
        mainData.setValuesForKeys(dict)
        return mainData
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
    class func mainDataArrWithArray(array: [[String: Any]]) -> [AYMainData]{
        var tmpArr = [AYMainData]()
        for dict in array {
            let mainData = self.mainDataWithDict(dict: dict)
            tmpArr.append(mainData)
        }
        return tmpArr
    }
    
    
    
}
