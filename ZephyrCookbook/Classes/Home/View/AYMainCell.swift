//
//  AYMainCell.swift
//  ZephyrCookbook
//
//  Created by Zephyr on 2016/10/13.
//  Copyright © 2016年 Zephyr. All rights reserved.
//

import UIKit
import SDWebImage

class AYMainCell: UITableViewCell {

    var cellHeight: CGFloat?
    
    
    private let iconW: CGFloat = 40
    private let leftMargin: CGFloat = 10
    
    private var cellImageView: UIImageView?
    private var titleLabel: UILabel?
    private var iconView: UIImageView?
    private var nameLabel: UILabel?
    private var descLabel: UILabel?
    private var containerView: UIView?
    
    class func mainCell(tableView: UITableView) -> AYMainCell{
        let reuseID = "mainCell"
        var cell = (tableView.dequeueReusableCell(withIdentifier: reuseID) as? AYMainCell) ?? nil
        if cell == nil {
            cell = AYMainCell(style: UITableViewCellStyle.default, reuseIdentifier: reuseID)
        }
        cell?.backgroundColor = UIColor.clear
        return cell!
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpSubviews() {
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor.white
        addSubview(containerView)
        self.containerView = containerView
        
        let cellImageView = UIImageView()
        self.cellImageView = cellImageView
        containerView.addSubview(cellImageView)
        
        let titleLabel = UILabel()
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.font = titleFont
        self.titleLabel = titleLabel
        containerView.addSubview(titleLabel)
        
        let iconView = UIImageView()
        self.iconView = iconView
        containerView.addSubview(iconView)
        
        let nameLabel = UILabel()
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.font = nameFont
        nameLabel.textColor = UIColor.gray
        self.nameLabel = nameLabel
        containerView.addSubview(nameLabel)
        
        let descLabel = UILabel()
        descLabel.numberOfLines = 0
        descLabel.font = descFont
        descLabel.textAlignment = NSTextAlignment.left
        descLabel.textColor = UIColor.gray
        self.descLabel = descLabel
        containerView.addSubview(descLabel)
        
    }
    
    var mainCellFrame: AYMainCellFrame?{
        didSet{
            
            //设置Frame
            cellImageView?.frame = mainCellFrame?.cellImageViewFrame ?? CGRect.zero
            titleLabel?.frame = mainCellFrame?.titleLabelFrame ?? CGRect.zero
            iconView?.frame = mainCellFrame?.iconViewFrame ?? CGRect.zero
            iconView?.layer.cornerRadius = (iconView?.frame.width)! * 0.5
            iconView?.layer.masksToBounds = true
            nameLabel?.frame = mainCellFrame?.nameLabelFrame ?? CGRect.zero
            descLabel?.frame = mainCellFrame?.descLabelFrame ?? CGRect.zero
            containerView?.frame = mainCellFrame?.containerFrame ?? CGRect.zero
            
            //设置数据
            if let mainData = mainCellFrame?.mainData {
                if let imgURLStr = mainData.imgs {
                    cellImageView?.sd_setImage(with: URL(string: imgURLStr), placeholderImage: #imageLiteral(resourceName: "default_r640-400"))
                }
                if let title = mainData.title {
                    titleLabel?.text = title
                }
                if let iconURLStr = mainData.userAvatar{
                    iconView?.sd_setImage(with: URL(string: iconURLStr), placeholderImage: #imageLiteral(resourceName: "default_new"))
                }
                if let name = mainData.userName {
                    nameLabel?.text = name
                }
                
                if let desc = mainData.desc {
                    descLabel?.text = desc
                }
            }
        }
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }

}
