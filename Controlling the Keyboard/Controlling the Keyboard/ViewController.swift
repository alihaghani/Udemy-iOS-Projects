//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Ali Haghani on 2015-12-22.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var textField: UITextField!
    @IBAction func button(sender: AnyObject) {
        
    label.text = textField.text
    }
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

