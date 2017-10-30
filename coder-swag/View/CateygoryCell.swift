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
    
    func updateViews(category: Category)
    {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
