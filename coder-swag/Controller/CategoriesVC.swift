//
//  ViewController.swift
//  coder-swag
//
//  Created by vince zipparro on 10/26/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //return the total number of items in this array
        return DataService.instance.getCategories().count
    }
    
    //grabbing tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //function that is called to get a reuseable cell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CateygoryCell
        {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else
        {
            return CateygoryCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let productsVC = segue.destination as? ProductsVC
        {
            //setting back button text to be an empty string
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            //replace whats there with something new
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
        }
        
    }

}

