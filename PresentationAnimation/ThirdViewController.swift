//
//  ThirdViewController.swift
//  PresentationAnimation
//
//  Created by 王志盼 on 2017/4/12.
//  Copyright © 2017年 王志盼. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func clickCancelBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
