//
//  ViewController.swift
//  AnimationApp
//
//  Created by Ilya Yushkov on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
            if !self.animationStarted {
                self.coreAnimationView.frame.origin.x -= 40
                self.animationStarted.toggle()
            }
        }
        
        
        
        
        sender.pulsate()
    }
    
}

