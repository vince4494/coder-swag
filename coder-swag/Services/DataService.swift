//
//  DataService.swift
//  coder-swag
//
//  Created by vince zipparro on 10/27/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import Foundation

class DataService
{
    //Created a "singleton" - design pattern
    //static means there is only one copy in memory so we can only ever create one DataService
    //refers back to the same object back in memory
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    //return type set to type array since category is of type array
    func getCategories() -> [Category]
    {
        return categories
    }
    
    
    
    
}
