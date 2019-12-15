//
//  Rotation.swift
//  DjApplication
//
//  Created by Komal Shrivastava on 7/26/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    //Start Rotating view
//    func startRotating() {
//        let rotationAnimation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
//        rotationAnimation.toValue = NSNumber(value: .pi * 2.0)
//        rotationAnimation.duration = 1.5;
//        rotationAnimation.isCumulative = true;
//        rotationAnimation.repeatCount = .infinity;
//        self.layer.add(rotationAnimation, forKey: "rotationAnimation")
//    }
    func startRotating(duration: Double = 1.5) {
        let kAnimationKey = "rotation"

        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")                                                                                      
            animate.duration = duration
            animate.repeatCount = Float.infinity

            animate.fromValue = 0.0
            animate.toValue = Float(Double.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    
    
    
    func pauseRotating() {
        let transform = self.layer.presentation()!.transform
        self.layer.transform = transform
        self.layer.removeAllAnimations()
//        let rotationAnimation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
//        rotationAnimation.duration = 0.0;
//        self.layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
    
    
    //Stop rotating view
    func stopRotating() {
        let kAnimationKey = "rotation"

        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }
//        self.layer.removeAnimation(forKey: "rotationAnimation")
    }
    
}
