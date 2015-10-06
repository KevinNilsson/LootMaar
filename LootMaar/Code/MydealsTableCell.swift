//
//  MydealsTableCell.swift
//  LootMaar
//
//  Created by beauty on 10/6/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import UIKit

class MydealsTableCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var hotOrcoldLbl: UILabel!
    @IBOutlet weak var editLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
