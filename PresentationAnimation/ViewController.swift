//
//  ViewController.swift
//  PresentationAnimation
//
//  Created by 王志盼 on 2017/4/12.
//  Copyright © 2017年 王志盼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = FirstViewController(nibName: "FirstViewController", bundle: nil)
        vc.modalPresentationStyle = .formSheet
        self.present(vc, animated: true, completion: nil)
        
        print("\(vc.presentationController)  \(vc.presentingViewController)  \(vc.presentedViewController)")
        
    }


}

