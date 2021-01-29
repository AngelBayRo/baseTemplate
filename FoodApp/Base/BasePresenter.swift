//
//  BasePresenter.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation
import UIKit

class BasePresenter {
    // Declared weak for the ARC to destroy them.
    internal weak var baseView: BaseViewProtocol?
    internal var baseRouter: BaseRouterProtocol?
    internal var baseInteractor: BaseInteractorInputProtocol?
    
    required init() {
        // Not implemented
    }
}
