//
//  UIApplicationExtension.swift
//  viperProject
//
//  Created by Hamza Jerbi on 29/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}
