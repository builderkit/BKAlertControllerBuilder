//
//  ViewController.swift
//  BKAlertControllerBuilderDemo_iOS
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit
import BKAlertControllerBuilder

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 60))
        button.setTitle("Alert", for: .normal)
        button.setTitleColor(.darkText, for: .normal)
        view.addSubview(button)
        button.center = view.center
        
        button.addTarget(self, action: #selector(self.onTap(_:)), for: .touchUpInside)
    }

    @objc func onTap(_ sender: UIButton) {
        
        UIAlertController(title: "title", message: "message", preferredStyle: .alert) {
            Actions.destructive("Destructive")
            Actions.cancel("Cancel") { _ in
                print("tap action: Cancel")
            }
            
            ForEach(0..<5) {
                DefaultAction(title: "Action:\($0)")
            }
        }.presented(by: self, animated: true)
    }

}

