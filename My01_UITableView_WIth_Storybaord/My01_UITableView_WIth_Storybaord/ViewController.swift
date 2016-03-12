//
//  ViewController.swift
//  My01_UITableView_WIth_Storybaord
//
//  Created by Eddie Hsu on 2016/3/12.
//  Copyright © 2016年 Griiid. All rights reserved.
//
//  參考資料 https://dotblogs.com.tw/toysboy21/2014/06/17/145587

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // 關聯到UI畫面上的控制項
    @IBOutlet weak var myTable: UITableView!
    
    // 建立資料陣列
    var ListArray: NSArray = ["Hello world", "Swift", "UITableView", "媽!我在這裡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 把 UITableView 的 dataSource 與 delegate 指向給自己
        myTable.dataSource = self
        myTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 宣告這個 UITableView 畫面上的控制項總共有多少 Row
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return ListArray.count
    }
    
    // 填充 UITableViewCell 中文字標簽的值
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel!.text = "\(ListArray.objectAtIndex(indexPath.row))"
        return cell
    }
    
}

