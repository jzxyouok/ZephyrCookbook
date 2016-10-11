//
//  AYProfileViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/11.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

class AYProfileViewController: UIViewController {

    lazy var scrollView: UIScrollView = {
       let scrollView = UIScrollView(frame: UIScreen.main.bounds)
        scrollView.isScrollEnabled = true
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isUserInteractionEnabled = true
        scrollView.contentSize = CGSize(width: AYScreamWidth, height: UIScreen.main.bounds.height * 2)
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
