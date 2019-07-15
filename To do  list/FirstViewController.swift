//
//  FirstViewController.swift
//  To do  list
//
//  Created by Solayman Rana on 15/7/19.
//  Copyright © 2019 Solayman Rana. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    

    var items:NSMutableArray = []
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        var cellLabel = ""
        
        if let tempLabel = items [indexPath.row] as? String {
            
            cellLabel = tempLabel
        }
        
        cell.textLabel?.text = cellLabel
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    override func viewDidAppear(_ animated: Bool) {
        
        let itemObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemObject as? NSMutableArray {
            
            items = tempItems
            table.reloadData()
        }
        
        

    }

}
