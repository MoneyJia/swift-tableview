//
//  BaseViewController.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/17.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var tablview : UITableView? = nil
    
    var collection : UICollectionView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }

    // MARK: - tableview
    func createTableview() {
        self.tablview = UITableView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight-64), style: UITableViewStyle.plain)
        self.tablview?.delegate = self as UITableViewDelegate
        self.tablview?.dataSource = self
        self.tablview?.tableFooterView = UIView()
        self.tablview?.separatorStyle = UITableViewCellSeparatorStyle.none
        self.view.addSubview(self.tablview!)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell? = nil
        return cell!
    }
    
    // MARK: - collection
    func createCollection() {
        let layout = UICollectionViewFlowLayout()
        self.collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight), collectionViewLayout: layout)
        self.collection?.delegate = self;
        self.collection?.dataSource = self;
        self.collection?.backgroundColor = UIColor.white
        self.view.addSubview(self.collection!)
        
        
        //self.collection?.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        

//        //注册一个cell
//        self.collection?.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
//
//
//        colltionView! .registerClass(Home_Cell.self, forCellWithReuseIdentifier:"cell")
//        //注册一个headView
//        colltionView! .registerClass(Home_HeadView.self, forSupplementaryViewOfKind:UICollectionElementKindSectionHeader, withReuseIdentifier: "headView")
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : UICollectionViewCell? = nil
        return cell!
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
