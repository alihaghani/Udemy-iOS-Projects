//
//  ViewController.swift
//  Is It Prime
//
//  Created by Ali Haghani on 2015-12-20.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usersNumber: UITextField!
    @IBAction func checkButton(sender: AnyObject) {
        if let number = Int(usersNumber.text!) {
        var isPrime = true
        
        if number == 1 {
            isPrime = false
        }
        
        if number != 1 && number != 2{
            for var i = 2; i<number; i++ {
                if number%i==0 {
                    isPrime = false
                }
            }
        }
        if isPrime {
            resultDisplay.text = "\(number) is a prime number!"
        } else {
            resultDisplay.text = "\(number) is not a prime number!"
        }
        
        } else {
            resultDisplay.text = "Please enter a whole number."
        }
}
    @IBOutlet var resultDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

