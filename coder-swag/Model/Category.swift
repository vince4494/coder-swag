//
//  Category.swift
//  coder-swag
//
//  Created by vince zipparro on 10/27/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import Foundation


struct Category
{
    //private(set) doesnt allow you to set these variables in other classes
    //you can retrieve and use them but you cannot set them
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String)
    {
        self.title = title
        self.imageName = imageName
        
    }
    
    
    
}
