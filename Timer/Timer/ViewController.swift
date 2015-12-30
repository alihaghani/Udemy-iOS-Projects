//
//  ViewController.swift
//  Timer
//
//  Created by Ali Haghani on 2015-12-20.
//  Copyright © 2015 Ali Haghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var time = 0
    var timer = NSTimer()
    
    @IBAction func startTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTimer(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeDisplay.text = "\(time)"
    }
    
    @IBAction func restartTimer(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeDisplay.text = "\(time)"
    }
    
    @IBOutlet var timeDisplay: UILabel!
    
    
    
    
    func result() {
        time++
        timeDisplay.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

