//
//  ViewController.swift
//  CocoaPodsDemo
//
//  Created by satoshi_umaM1 on 2022/2/8.

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func 展开收起(_ sender: Any) {
        let pushVC = HumanViewController()
        navigationController?.pushViewController(pushVC, animated: true)
    }
}
