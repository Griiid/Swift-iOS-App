//
//  ViewController.swift
//  My02_CustomizeUITableViewCell_Storyboard
//
//  Created by Eddie Hsu on 2016/3/12.
//  Copyright © 2016年 Griiid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var MyTable: UITableView!
    
    let titleArray: NSArray = ["1st", "2nd", "3rd"]
    let contentArray: NSArray = ["Apple", "Banana", "Cat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 將 MyTable 的 DataSource 及 Delegate 指派 給 self
        MyTable.dataSource = self
        MyTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return min(titleArray.count, contentArray.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier = "MyTableViewCell";
        
        var cell:MyTableViewCell? = MyTable.dequeueReusableCellWithIdentifier(identifier) as? MyTableViewCell;
        
        if cell == nil {
            cell = MyTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier);
        }
        
        cell?.lbl_Title.text = titleArray[indexPath.row] as? String
        cell?.lbl_Content.text = contentArray[indexPath.row] as? String
        
        return cell!
        
    }

}

