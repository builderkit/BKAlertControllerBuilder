//
//  ActionGroup.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

public struct ActionGroup : Action {

    public let actions: [Action]
    
    public init(_ actions: [Action]) {
        self.actions = actions
    }
    
    public func compose(to alertController: UIAlertController) {
        actions.forEach { $0.compose(to: alertController) }
    }
}
