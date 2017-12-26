//
//  TabBarViewController.swift
//  SampleDemo
//
//  Created by 圆通 on 2017/11/30.
//  Copyright © 2017年 圆通. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 首页
        let homeViewController = HomeViewController()
        addChildViewControllers(homeViewController, "", "","首页","account_normal","account_highlight")

        //关于
        let aboutViewControntroller = AboutViewController()
        addChildViewControllers(aboutViewControntroller, "", "","关于","","")

        //我
        let meViewController = MeViewController()
        addChildViewControllers(meViewController, "", "","我","","")
    }
    
    func addChildViewControllers(_ childController: UIViewController, _ norImage:NSString ,_ selectImage:NSString,_ title:NSString,_ normalImage:NSString,_ selectedImage:NSString) {
        
        childController.tabBarItem.title = title as String
        childController.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.gray], for: .normal)
        childController.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.blue], for: .selected)
        childController.tabBarItem.setTitleTextAttributes([NSAttributedStringKey(rawValue: NSAttributedStringKey.font.rawValue): UIFont.systemFont(ofSize: 14)], for: .normal)
        
        childController.tabBarItem.image = UIImage(named: normalImage as String)
        childController.tabBarItem.selectedImage  = UIImage(named: selectedImage as String)
        
        let navigationController = NavigationViewController(rootViewController: childController)
        addChildViewController(navigationController)
    }
}
