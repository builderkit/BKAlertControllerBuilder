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
    
    public static func buildBlock(_ action: Action) -> Action {
        return action
    }
    
    public static func buildBlock(_ actions: Action...) -> Action {
        return ActionGroup(actions)
    }
    
    public static func buildIf(_ action: Action?) -> Action {
        return action ?? EmptyAction()
    }
    
    public static func buildEither(first action: Action) -> Action {
        return action
    }
    
    public static func buildEither(second action: Action) -> Action {
        return action
    }
}

extension UIAlertController {
    
    public convenience init(title: String?, message: String?, preferredStyle: UIAlertController.Style, @ActionBuilder action: () -> Action) {
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        action().compose(to: self)
    }
    
    public func presented(by presentingViewController: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        presentingViewController.present(self, animated: flag, completion: completion)
    }    
}
