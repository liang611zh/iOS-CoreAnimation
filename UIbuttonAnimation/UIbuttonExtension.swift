//
//  UIbuttonExtension.swift
//  UIbuttonAnimation
//
//  Created by LIANG ZHAO on 2017-10-26.
//  Copyright © 2017 bcit. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func pulseit() {
        //create an animation called pulse
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.5
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        //The initial spring velocity. For smooth start to the animation, match this value to the view’s
        //velocity as it was prior to attachment.
        pulse.initialVelocity = 0.5
        //The damping ratio for the spring animation as it approaches its quiescent state.
        pulse.damping = 1.0
         //add the animation to the UIBUTTON layer if you have multiple animation you need unique key for each
        layer.add(pulse, forKey: "pulse")
    }
    
    func flashit() {
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.3
        flash.fromValue = 1
        flash.toValue = 0.1
        //CAMediaTimingFunction represents one segment of a function that defines the pacing of an animation as a timing curve.
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        //add the animation to the UIBUTTON layer if you have multiple animation you need unique key for each
        layer.add(flash, forKey: nil)
    }
    
    
    func shakeit() {
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 15, y: center.y - 5)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 15, y: center.y + 5)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
         //add the animation to the UIBUTTON layer if you have multiple animation you need unique key for each
        layer.add(shake, forKey: "position")
    }
    
}



