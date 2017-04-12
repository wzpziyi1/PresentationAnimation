//
//  FirstViewController.swift
//  PresentationAnimation
//
//  Created by 王志盼 on 2017/4/12.
//  Copyright © 2017年 王志盼. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickCancelBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

