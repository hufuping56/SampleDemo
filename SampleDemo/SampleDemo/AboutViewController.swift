//
//  AboutViewController.swift
//  SampleDemo
//
//  Created by 圆通 on 2017/11/30.
//  Copyright © 2017年 圆通. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var tableView = UITableView(frame: CGRect.zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        navigationItem.title = "关于"
        view.backgroundColor = UIColor.white
        setupTableView()
        
    }
    func setupTableView(){
        tableView.delegate = self;
        tableView.dataSource = self;
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) -> Void in
            make.top.left.right.bottom.equalTo(view)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "aboutCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "aboutCell")
        }
        return cell!
    }
}
