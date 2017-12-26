//
//  LoginViewController.swift
//  SampleDemo
//
//  Created by 圆通 on 2017/12/4.
//  Copyright © 2017年 圆通. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sure(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.window?.rootViewController = TabBarViewController()
    }
}
