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
    
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8] ,[0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    var gameActive = true
    
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    
    @IBAction func playAgain(sender: AnyObject) {
        
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        activePlayer = 1
        
        gameActive = true
        
        gameOverLabel.hidden = true
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        playAgain.hidden = true
        playAgain.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        var buttonToClear : UIButton
        
        for i in 0...8 {
            buttonToClear = view.viewWithTag(i) as! UIButton
            buttonToClear.setImage(nil, forState: .Normal)
        }
        
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if (gameState[sender.tag] == 0 && gameActive) {
            
            gameState[sender.tag] = activePlayer
            
            if activePlayer == 1 {
                
                sender.setImage(UIImage(named: "o.jpg"), forState: .Normal)
                
                activePlayer = 2
                
                
            } else {
                sender.setImage(UIImage(named: "x.png"), forState: .Normal)
                
                activePlayer = 1
                
            }
            
            for combination in winningCombinations {
                
                if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]) {
                    
                    gameActive = false
                    
                    if gameState[combination[0]] == 1 {
                        gameOverLabel.text = "O has won!"
                        
                    }
                    
                    else {
                        
                        gameOverLabel.text = "X has won!"
                        
                    }
                    
                    endGame()
                    
                }
            }
            
            if gameActive {
            
                gameActive = false
            
                for buttonState in gameState {
                
                    if buttonState == 0 {
                    gameActive = true
                    }
                
                }
            
                if !gameActive {
                    gameOverLabel.text = "It's a draw!"
                    endGame()
                }
            }
        }
        
    }
    
    func endGame() {
        gameOverLabel.hidden = false;
        UIView.animateWithDuration(0.5, animations: {
            self.gameOverLabel.center = CGPointMake(self.gameOverLabel.center.x + 500, self.gameOverLabel.center.y)
        })
        
        playAgain.hidden = false;
        UIView.animateWithDuration(0.5, animations: {
            self.playAgain.center = CGPointMake(self.playAgain.center.x + 500, self.playAgain.center.y)
        })
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gameOverLabel.hidden = true
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        playAgain.hidden = true
        playAgain.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}