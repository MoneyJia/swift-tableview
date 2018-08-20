//
//  ViewController.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/17.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton(frame: CGRect(x: 20, y: 100, width: 200, height: 40))
        btn.backgroundColor = UIColor.red
        btn.setTitle("tableview的简单使用", for: UIControlState.normal)
        btn.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn.addTarget(self, action: #selector(tableviewClick), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
        let btn2 = UIButton(frame: CGRect(x: 20, y: 200, width: 200, height: 40))
        btn2.backgroundColor = UIColor.red
        btn2.setTitle("tableview-自定义cell", for: UIControlState.normal)
        btn2.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn2.addTarget(self, action: #selector(tableCellClick), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn2)
        
        
        let btn3 = UIButton(frame: CGRect(x: 20, y: 300, width: 200, height: 40))
        btn3.backgroundColor = UIColor.red
        btn3.setTitle("collection", for: UIControlState.normal)
        btn3.setTitleColor(UIColor.white, for: UIControlState.normal)
        btn3.addTarget(self, action: #selector(collectionClick), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn3)
        
    }
    
    @objc func tableviewClick() {
        self.navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    @objc func tableCellClick() {
        self.navigationController?.pushViewController(TableCellViewController(), animated: true)
    }
    
    @objc func collectionClick() {
        self.navigationController?.pushViewController(TestCollectionViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

