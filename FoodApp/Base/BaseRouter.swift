//
//  BaseRouter.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation
import UIKit

class BaseRouter {
    // Declared weak for the ARC to destroy them.
    internal weak var baseView: UIViewController?
    
    required init() {
        // Not implemented
    }
    
    static func setRoot(navigationController: UIViewController) {
        guard let window = UIApplication.shared.delegate?.window else { return }
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    static func logout(viewController: UIViewController? = nil) {
        if let navigationController = (UIApplication.shared.windows.first?.rootViewController as? UINavigationController) {
            
            navigationController.popToRootViewController(animated: true)
            
        } else {
            if let viewController = viewController {
                viewController.dismiss(animated: true, completion: nil)
            }
            if let navigationController = (UIApplication.shared.windows.first?.rootViewController as? UINavigationController) {
                navigationController.popToRootViewController(animated: true)
            }
        }
    }
}
