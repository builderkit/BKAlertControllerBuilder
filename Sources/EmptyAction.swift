//
//  EmptyAction.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

struct EmptyAction : Component {
    
    init() { }
    
    func compose(to alertController: UIAlertController) {
        // This is an empty action, so we do nothing here.
    }
}
