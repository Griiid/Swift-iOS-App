//
//  MyTableViewCell.swift
//  My02_CustomizeUITableViewCell_Storyboard
//
//  Created by Eddie Hsu on 2016/3/12.
//  Copyright © 2016年 Griiid. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_Title: UILabel!
    
    @IBOutlet weak var lbl_Content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
