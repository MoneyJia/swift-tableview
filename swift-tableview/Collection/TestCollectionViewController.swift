//
//  CollectionViewController.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/17.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class TestCollectionViewCell: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "collctionview的简单使用"
        
        createCollection()
    }

    override func createCollection() {
        super.createCollection()
        
        self.collection?.register(TestCollectionViewCell.self, forCellWithReuseIdentifier: "TestCollectionViewCell")

    }

    // MARK: - collection
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCell", for: indexPath) as! TestCollectionViewCell
        cell.imgView!.backgroundColor = UIColor.red
        cell.layer.borderWidth = 0.3;
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.titleLabel!.text = "呵呵"
        cell.priceLabel!.text = "800.0￥"
        cell.readLabel!.text = "20💗"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize.init(width: CGFloat(kScreenWidth-45)/3.0, height: 50)
        return CGSize.init(width: (kScreenWidth-45)/2.0, height: 270)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(15, 15, 15, 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
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
