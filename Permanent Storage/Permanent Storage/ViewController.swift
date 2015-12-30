//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Ali Haghani on 2015-12-22.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSUserDefaults.standardUserDefaults().setObject("Rob", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(userName)
        
        let arr = [1, 2, 3, 4]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in returnedArray{
            print(x)
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

