//
//  CellTableViewCell.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/17.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    var nameLable : UILabel?
    var priceLable : UILabel?
    var timeLable : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubViews()
    }
    
    
    
    func addSubViews() {
        
        nameLable = createLable()
        nameLable?.frame = CGRect(x: 10, y: 10, width: kScreenWidth/2.0-10, height: 20)
        self.addSubview(nameLable!)
        
        priceLable = createLable()
        priceLable?.frame = CGRect(x: kScreenWidth/2.0, y: 10, width: kScreenWidth/2.0-10, height: 20)
        self.addSubview(priceLable!)
        
        timeLable = createLable()
        timeLable?.frame = CGRect(x: 10, y: 30, width: kScreenWidth/2.0-10, height: 20)
        self.addSubview(timeLable!)
        
        let xianView : UIView? = UIView(frame: CGRect(x: 0, y: 59, width: kScreenWidth, height: 1))
        xianView?.backgroundColor = UIColor.lightGray
        self.addSubview(xianView!)
    }
    
    func loadData(model:TableCellModel) {
        
        nameLable?.text = model.name! as String
        
        priceLable?.text = model.price! as String
        
        timeLable?.text = model.time! as String
    }
    
    
    
    func createLable() -> UILabel {
        
        let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 14)
        lable.textColor = UIColor.red
        lable.backgroundColor = UIColor.clear
        lable.textAlignment = NSTextAlignment.left
        return lable;
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
