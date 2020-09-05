//
//  ActionBuilder.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

@_functionBuilder
public struct ActionBuilder {
    
    public static func buildBlock(_ component: Component) -> Component {
        return component
    }
    
    public static func buildBlock(_ components: Component...) -> Component {
        return ActionGroup(components)
    }
    
    public static func buildIf(_ component: Component?) -> Component {
        return component ?? EmptyAction()
    }
    
    public static func buildEither(first component: Component) -> Component {
        return component
    }
    
    public static func buildEither(second component: Component) -> Component {
        return component
    }
}

extension UIAlertController {
    
    public convenience init(title: String?, message: String?, preferredStyle: UIAlertController.Style, @ActionBuilder component: () -> Component) {
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        component().compose(to: self)
    }
    
    public func presented(by presentingViewController: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        presentingViewController.present(self, animated: flag, completion: completion)
    }    
}
