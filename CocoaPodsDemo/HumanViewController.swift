//
//  HumanViewController.swift
//  CocoaPodsDemo
//
//  Created by satoshi_umaM1 on 2022/2/17.
//

import UIKit

class HumanViewController: UIViewController {
    private var human: HumanView!
    private var subTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview({
            human = HumanView()
            human.frame = CGRect(x: 0, y: 88, width: view.frame.size.width, height: view.frame.size.height)
            human.delegate = self
            return human
        }())

        view.addSubview({
            subTitle = UILabel()
            subTitle.frame = CGRect(x: 0, y: 68, width: view.frame.size.width, height: 16)
            subTitle.textColor = UIColor(red: 24 / 255, green: 24 / 255, blue: 24 / 255, alpha: 1)
            subTitle.font = UIFont.systemFont(ofSize: 14)
            subTitle.textAlignment = .center
            subTitle.text = "人体结构图"
            return subTitle
        }())
    }
}

extension HumanViewController: HumanViewDelegate {
    func returnClickCellIndex(type: Int) {
        print("---type---\(type)")

        if type == 10 {
            subTitle.text = "心脏"
        } else {
            subTitle.text = "胃"
        }

        human.setNeedsDisplay()
    }

    func returnReload() {
        human.setNeedsDisplay()
    }
}
