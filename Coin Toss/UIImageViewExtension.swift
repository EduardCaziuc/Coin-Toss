//
//  UIImageViewExtension.swift
//  Coin Toss
//
//  Created by Eduard Caziuc on 19/04/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import UIKit

extension UIView {
    
    func rotate360Degrees(duration: CFTimeInterval = 1, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(Double.pi * 20)
        rotateAnimation.duration = duration
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = (delegate as! CAAnimationDelegate)
        }
        self.layer.add(rotateAnimation, forKey: nil)
    }
}
  
