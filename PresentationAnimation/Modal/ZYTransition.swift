//
//  ZYTransition.swift
//  PresentationAnimation
//
//  Created by 王志盼 on 2017/4/14.
//  Copyright © 2017年 王志盼. All rights reserved.
//

import UIKit

private let instance = ZYTransition()

class ZYTransition: NSObject, UIViewControllerTransitioningDelegate{

    
    //swift中单例写法
    class func sharedTransition() -> ZYTransition {
        return instance
    }
    
    /// 需要创建一个presentVc，用来承载presented\presenting
    ///
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        return ZYPresentationController(presentedViewController: presented, presenting: presenting)
        
    }
    
    
    /// 设置dismiss的动画，vc已经被展示了
    ///
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let anim = ZYAnimatedTransitioning()
        anim.presented = true
        return anim
        
    }
    
    
    /// 设置present的动画，vc已经被dismiss了
    ///
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        let anim = ZYAnimatedTransitioning()
        anim.presented = false
        return anim
        
    }
    
   
}
