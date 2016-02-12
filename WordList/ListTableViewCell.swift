//
//  ListTableViewCell.swift
//  WordList
//
//  Created by 木村　恒輝 on 2016/02/12.
//  Copyright (c) 2016年 木村　恒輝. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
