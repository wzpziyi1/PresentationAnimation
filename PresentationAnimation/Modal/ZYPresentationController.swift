//
//  ZYPresentationController.swift
//  PresentationAnimation
//
//  Created by 王志盼 on 2017/4/12.
//  Copyright © 2017年 王志盼. All rights reserved.
//

import UIKit

class ZYPresentationController: UIPresentationController{

    
    /// 在这里设置presentedView展示的尺寸
    override var frameOfPresentedViewInContainerView: CGRect {
        return containerView!.bounds
    }
    
    //由于是自定义过度动画，所以需要手动添加presentedView
    override func presentationTransitionWillBegin() {
        
        self.presentedView?.frame = self.containerView!.bounds
        self.containerView?.addSubview(self.presentedView!)
    }
    
    override func presentationTransitionDidEnd(_ completed: Bool) {
        
    }
    
    override func dismissalTransitionWillBegin() {
        
    }
    //在dismiss完之后，要把presentedView移除掉
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        
        self.presentedView?.removeFromSuperview()
    }
    
}

