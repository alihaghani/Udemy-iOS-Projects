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
    
    @IBOutlet var image: UIImageView!
    @IBAction func updateImage(sender: AnyObject) {
        
        if counter == 6 {
            counter = 0
        }
        
        counter++
        
        image.image = UIImage(named: "frame\(counter).jpg")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        
        image.center = CGPointMake(image.center.x - 400, image.center.y)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { () -> Void in
            
            self.image.center = CGPointMake(self.image.center.x + 400, self.image.center.y)
            
        }
        
        
        
    }


}

