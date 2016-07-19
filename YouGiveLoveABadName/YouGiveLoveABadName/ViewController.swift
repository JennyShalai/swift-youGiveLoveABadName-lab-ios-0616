//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bonjovi: UIImageView!
    var heightConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.heightConstraint = self.bonjovi.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
        self.heightConstraint?.active = true
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        UIView.animateKeyframesWithDuration(1, delay: 0, options: .CalculationModeCubic, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.2, animations: {
                    self.heightConstraint?.active = false
                    self.heightConstraint = self.bonjovi.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                    self.heightConstraint?.active = true
                    self.view.layoutIfNeeded()
                })
            
                UIView.addKeyframeWithRelativeStartTime(0.2, relativeDuration: 0.6, animations: {
                    self.heightConstraint?.active = false
                    self.heightConstraint = self.bonjovi.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                    self.heightConstraint?.active = true
                    self.view.layoutIfNeeded()
                })
            
                UIView.addKeyframeWithRelativeStartTime(0.8, relativeDuration: 0.2, animations: {
                    self.heightConstraint?.active = false
                    self.heightConstraint = self.bonjovi.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1)
                    self.heightConstraint?.active = true
                    self.view.layoutIfNeeded()
                })
            
                UIView.addKeyframeWithRelativeStartTime(1, relativeDuration: 0, animations: {
                    self.heightConstraint?.active = false
                    self.heightConstraint = self.bonjovi.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                    self.heightConstraint?.active = true
                    self.view.layoutIfNeeded()
                })
            
            }) { (true) in
                // after animation code
        }
    }

}

