//
//  ViewController.swift
//  Animations
//
//  Created by Ali Haghani on 2016-05-27.
//  Copyright © 2016 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet var image: UIImageView!
    @IBAction func updateImage(sender: AnyObject) {
        
        if (isAnimating){
            timer.invalidate()
            isAnimating = false
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
            isAnimating = true
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
            if counter == 6 {
                counter = 0
            }
            
            counter += 1
            
            image.image = UIImage(named: "frame\(counter).jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func viewDidLayoutSubviews() {
        
        
        image.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { () -> Void in
            
            self.image.alpha = 1
            
        }
        
        
        
    }
 */


}

