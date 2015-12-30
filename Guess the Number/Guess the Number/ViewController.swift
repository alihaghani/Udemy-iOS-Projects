//
//  ViewController.swift
//  Guess the Number
//
//  Created by Ali Haghani on 2015-12-18.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userGuess: UITextField!
    @IBAction func guessButton(sender: AnyObject) {
        let randomNumber:Int = Int(arc4random_uniform(11))
        print(randomNumber)
        
        if (!userGuess.text!.isEmpty){
            if (Int(userGuess.text!)! == randomNumber) {
                resultDisplay.text = "You got it!"
                
            } else {
                resultDisplay.text = "The number was \(randomNumber), try again."
            }
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

