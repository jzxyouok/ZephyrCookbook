//
//  AYStatus.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYStatus: NSObject {
    
    var bannerArr: [AYBannerData]?
    var titleArr: [AYTitleData]?
    var mainArr: [AYMainData]?
    
    override init() {
        super.init()
        loadDataWithJsonFile()
    }
    private func loadDataWithJsonFile() {
        guard let path = Bundle.main.path(forResource: "status", ofType: nil) else {
            AYLog(message: "没有找到json文件")
            return
        }
        let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        let dict = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String: Any]
        guard let allStatus = dict!["data"] as? [String: Any] else{
            AYLog(message: "没有加载到数据")
            return
        }
        mainArr = AYMainData.mainDataArrWithArray(array: allStatus["list"] as! [[String: Any]])
        let headerArr = allStatus["header"] as! [[String: Any]]
        let bannerDict = headerArr[0] 
        let titleDict = headerArr[1] 
        bannerArr = AYBannerData.bannerDataArrWithArray(array: bannerDict["list"] as! [[String: Any]])
        titleArr = AYTitleData.titleDataArrWithArray(array: titleDict["list"] as! [[String: Any]])
    }
}
