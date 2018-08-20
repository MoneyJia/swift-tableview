//
//  TestCollectionViewCell.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/20.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class TestCollectionViewCell: UICollectionViewCell {
    var imgView : UIImageView?//cell上的图片
    var titleLabel:UILabel?//cell上title
    var priceLabel:UILabel?//cell上价格
    var readLabel:UILabel?//cell上的阅读量
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        //初始化各种控件
        imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: (kScreenWidth-45)/2.0, height: 200))  //CGRectMake(0, -10, (kScreenWidth-30)/2, 200)
        self .addSubview(imgView!)
        titleLabel = UILabel(frame: CGRect(x: 5, y: imgView!.frame.maxY, width: (imgView?.frame.width)!-10,height:  50))
        titleLabel?.numberOfLines = 0
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        titleLabel?.textColor = UIColor.lightGray
        self .addSubview(titleLabel!)
        
        priceLabel = UILabel(frame: CGRect(x: 5, y: titleLabel!.frame.maxY,width:  (imgView?.frame.width)!/2.0-5,height:  20))
        priceLabel?.numberOfLines = 0
        priceLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        priceLabel?.textColor = UIColor.lightGray
        self .addSubview(priceLabel!)
        
        
        
        readLabel = UILabel(frame: CGRect(x: (priceLabel?.frame.maxX)!, y: titleLabel!.frame.maxY, width: (imgView?.frame.width)!/2.0-5, height: 20)) //((kScreenWidth-30)/2/2, CGRectGetMaxY(titleLabel!.frame), (width-40)/2/2, 20)
        readLabel?.numberOfLines = 0
        readLabel?.textAlignment = NSTextAlignment.right
        readLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        readLabel?.textColor = UIColor.lightGray
        self .addSubview(readLabel!)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
