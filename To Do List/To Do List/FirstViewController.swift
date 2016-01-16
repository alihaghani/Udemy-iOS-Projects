//
//  FirstViewController.swift
//  To Do List
//
//  Created by Ali Haghani on 2015-12-23.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {
    
    


    @IBOutlet var toDoListTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil) {
        
        toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! NSArray as! [String]
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return toDoList.count
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel!.text = toDoList[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        // swipe to the left
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoList.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
            // reload array onto table
            toDoListTable.reloadData()
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }


}

