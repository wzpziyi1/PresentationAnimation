//
//  ZYAnimatedTransitioning.swift
//  PresentationAnimation
//
//  Created by 王志盼 on 2017/4/14.
//  Copyright © 2017年 王志盼. All rights reserved.
//

import UIKit

class ZYAnimatedTransitioning: NSObject, UIViewControllerAnimatedTransitioning{

    //判断是否已经presented
    var presented: Bool = false
    
    let duration: TimeInterval = 0.25
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    
    /// 在这个方法里面自定义动画
    ///
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        if presented {
            let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)!
            
            toView.frame.origin.x = toView.frame.size.width
            
            UIView.animate(withDuration: duration, animations: {
                
                toView.frame.origin.x = 0
                
            }, completion: { (finish: Bool) in
                transitionContext.completeTransition(true)
            })
        }
        else {
            let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
            
            UIView.animate(withDuration: duration, animations: { 
                fromView.frame.origin.x = -fromView.frame.size.width
            }, completion: { (_) in
                transitionContext.completeTransition(true)
            })
        }
        
    }
    
}
