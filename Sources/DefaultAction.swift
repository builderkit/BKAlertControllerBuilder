//
//  DefaultAction.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/5.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

public struct DefaultAction : Action {
    
    public let title: String?
    public let handler: ((UIAlertAction) -> Void)?
    
    public init(title: String?, handler: ((UIAlertAction) -> Void)? = nil) {
        self.title = title
        self.handler = handler
    }
    
    public func compose(to alertController: UIAlertController) {
        alertController.addAction(.init(title: title, style: .default, handler: handler))
    }
}
