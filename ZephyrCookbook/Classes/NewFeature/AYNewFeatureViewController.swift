//
//  AYNewFeatureViewController.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/9.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit

private let cellCount = 5
private let cellIdentifier = "cell"

class AYNewFeatureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterBtn(_ sender: UIButton) {
        guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() else{
            return
        }
        present(mainVC, animated: true, completion: nil)
    }


}

extension AYNewFeatureViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! AYCollectionViewCell
        
        cell.backgroundColor = indexPath.item % 2 == 0 ? UIColor.red : UIColor.green
        cell.index = indexPath.item
        
        return cell
    }
}

extension AYNewFeatureViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        let index = collectionView.indexPathsForVisibleItems.last!
        
        if index.item == cellCount - 1 {
            AYLog(message: index)
        }
    }
    
}

class AYCollectionViewCell: UICollectionViewCell {
    
    var index = 0{
        didSet{
            let imageName = NSString(format: "guide_step%d", index + 1)
            guideImageView.image = UIImage(named: imageName as String)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        guideImageView.frame = UIScreen.main.bounds
        contentView.addSubview(guideImageView)
    }
    
    lazy var guideImageView = UIImageView()
}

class AYCollectionViewFlowLayout: UICollectionViewFlowLayout {
    override func prepare() {
        super.prepare()
        minimumLineSpacing = 0
        minimumInteritemSpacing = 0
        itemSize = UIScreen.main.bounds.size
        scrollDirection = UICollectionViewScrollDirection.horizontal
        
        collectionView?.bounces = false
        collectionView?.showsVerticalScrollIndicator = false
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.isPagingEnabled = true
    }
}
