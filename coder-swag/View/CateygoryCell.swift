//
//  CateygoryCellTableViewCell.swift
//  coder-swag
//
//  Created by vince zipparro on 10/26/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import UIKit

class CateygoryCell: UITableViewCell
{
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
