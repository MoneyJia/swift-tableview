//
//  TableCellViewController.swift
//  swift-tableview
//
//  Created by jiayuqiang on 2018/8/17.
//  Copyright © 2018年 jiayuqiang. All rights reserved.
//

import UIKit

class TableCellViewController: BaseViewController {

    var dataArr : NSArray? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "tableview-自定义cell"
        
        //getdata
        loadData()
        
        //tableview
        createTableview()
        
    }
    
    func loadData() {
        
        let model1 = TableCellModel()
        model1.name = "model1"
        model1.price = "100RMB"
        model1.time = "2018年08月17日"
        
        let model2 = TableCellModel()
        model2.name = "model2"
        model2.price = "200RMB"
        model2.time = "2018年08月17日"
        
        let model3 = TableCellModel()
        model3.name = "model3"
        model3.price = "300RMB"
        model3.time = "2018年08月17日"
        
        dataArr = [model1,model2,model3];
    }
    
    override func createTableview() {
        super.createTableview()
        
        self.tablview?.register(CellTableViewCell.self, forCellReuseIdentifier:"cell")
        

        self.tablview?.rowHeight = 60.0
    }
    
    
    //#param mark -tableviewDelegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArr?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell : CellTableViewCell = CellTableViewCell(style: UITableViewCellStyle.`default`, reuseIdentifier: "cell")
        let cell : CellTableViewCell = tablview?.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.loadData(model: dataArr![indexPath.row] as! TableCellModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
        self.navigationController?.pushViewController(TestViewController(), animated: true)
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
