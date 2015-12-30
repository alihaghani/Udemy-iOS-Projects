//
//  ViewController.swift
//  Hello World
//
//  Created by Ali Haghani on 2015-12-18.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        var catAge = Int(textField.text!)!
        
        catAge = catAge * 7
        
        print("Button tapped!")
        
        label.text = "Your cat is \(catAge) in cat years"
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello Ali!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

