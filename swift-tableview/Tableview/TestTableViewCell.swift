//
//  TestTableViewCell.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/20.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var timeLable: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func loadData(model:TableCellModel) {
        
        nameLable?.text = model.name! as String
        priceLable?.text = model.price! as String
        timeLable?.text = model.time! as String
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
