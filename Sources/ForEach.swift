//
//  ForEach.swift
//  BKAlertControllerBuilder
//
//  Created by jinxiaolong on 2020/9/4.
//  Copyright © 2020 BuilderKit. All rights reserved.
//

import UIKit

public struct ForEach<Data> : Component where Data : RandomAccessCollection {
    
    let actions: ActionGroup
        
    public init(_ data: Data, @ActionBuilder component: (Data.Element) -> Component) {
        actions = ActionGroup(data.map(component))
    }
    
    public func compose(to alertController: UIAlertController) {
        actions.compose(to: alertController)
    }
}

