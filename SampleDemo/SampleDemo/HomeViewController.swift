//
//  HomeViewController.swift
//  SampleDemo
//
//  Created by 圆通 on 2017/11/30.
//  Copyright © 2017年 圆通. All rights reserved.
//

import UIKit
import SnapKit
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() {
        navigationItem.title = "首页"
        view.backgroundColor = UIColor.white
        setupTableView()
    }
    
    func setupTableView(){
        tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) -> Void in
            make.left.right.top.bottom.equalTo(view)
        }
    }
    
    @objc func nextViewController(){
        let detailViewController = DetailViewController()
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cellIdentifier = "cell" as NSString;
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier as String)
        if cell == nil {
            cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: cellIdentifier as String)
        }
        cell?.textLabel?.text = "\(indexPath.row)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}
