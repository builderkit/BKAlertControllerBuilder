//
//  Component.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

public protocol Component {
    
    func compose(to alertController: UIAlertController)
}
