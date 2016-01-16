//
//  SecondViewController.swift
//  To Do List
//
//  Created by Ali Haghani on 2015-12-23.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        
        if (!item.text!.isEmpty){
        toDoList.append(item.text!)
        }
        
        item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        item.resignFirstResponder()
        return true
    }


}

