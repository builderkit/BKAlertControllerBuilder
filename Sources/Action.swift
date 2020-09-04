//
//  Action.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

public struct Action : Component {
    
    public let title: String?
    public let style: UIAlertAction.Style
    public let handler: ((UIAlertAction) -> Void)?
    
    public init(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
    
    public func compose(to alertController: UIAlertController) {
        alertController.addAction(.init(title: title, style: style, handler: handler))
    }
    
}

extension Action {
    
    public static func `default`(_ title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> Action {
        return Action(title: title, style: .default, handler: handler)
    }
    
    public static func cancel(_ title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> Action {
        return Action(title: title, style: .cancel, handler: handler)
    }
    
    public static func destructive(_ title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> Action {
        return Action(title: title, style: .destructive, handler: handler)
    }
}
