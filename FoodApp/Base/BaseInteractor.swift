//
//  BaseInteractor.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation
import UIKit

class BaseInteractor {
    // Declared weak for the ARC to destroy them.
    internal weak var basePresenter: BaseInteractorOutputProtocol?
    
    required init() {
        //Not implemented
    }
    
}
