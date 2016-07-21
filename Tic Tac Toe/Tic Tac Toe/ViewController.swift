//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Ali Haghani on 2016-06-24.
//  Copyright © 2016 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 // 1 = o, 2 = x
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    
    
    @IBOutlet weak var button: UIButton!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if (gameState[sender.tag] == 0) {
            
            gameState[sender.tag] = activePlayer
            
            if activePlayer == 1 {
                
                sender.setImage(UIImage(named: "o.jpg"), forState: .Normal)
                
                activePlayer = 2
                
                
            } else {
                sender.setImage(UIImage(named: "x.png"), forState: .Normal)
                
                activePlayer = 1
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}