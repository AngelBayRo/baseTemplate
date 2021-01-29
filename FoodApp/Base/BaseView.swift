//
//  BaseView.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation
import UIKit

class BaseView: UIViewController {
    internal var basePresenter: BasePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: BaseViewControllerProtocol
extension BaseView: BaseViewControllerProtocol {}
