//
//  Actions.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/5.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

public enum Actions {
    
    public static func `default`(_ title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> Action {
        return DefaultAction(title: title, handler: handler)
    }
    
    public static func cancel(_ title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> Action {
        return CancelAction(title: title, handler: handler)
    }
    
    public static func destructive(_ title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> Action {
        return DestructiveAction(title: title, handler: handler)
    }
}
