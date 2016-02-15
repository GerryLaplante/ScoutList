//
//  ViewController.swift
//  Swipe it to Delete it
//
//  Created by Paul Wright on 2/15/16.
//  Copyright © 2016 Gerry Laplante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableViewScoutList: UITableView!
    
    var scouts = ["Ryan", "Billy", "Sam", "Matt", "Tom", "Joe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewScoutList.dataSource = self
        self.tableViewScoutList.delegate = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.scouts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.scouts[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.scouts.removeAtIndex(indexPath.row)
            tableViewScoutList.reloadData() 
        }
    }

    


}

