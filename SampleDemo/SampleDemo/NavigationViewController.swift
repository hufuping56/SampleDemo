//
//  NavigationViewController.swift
//  SampleDemo
//
//  Created by 圆通 on 2017/11/30.
//  Copyright © 2017年 圆通. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "返回", style: .plain, target:self, action: #selector(back))
        }
        super.pushViewController(viewController, animated: animated)
        
    }
    
    @objc func back() {
        popViewController(animated: true)
    }
}
