//
//  HomeInteractor.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation

protocol HomeInteractorInputProtocol: BaseInteractorInputProtocol {
    
}

class HomeInteractor: BaseInteractor {
    // MARK: VIPER Dependencies
    weak var presenter: HomeInteractorOutputProtocol? {
        return super.basePresenter as? HomeInteractorOutputProtocol
    }
    
    var homeAssemblyDTO: HomeAssemblyDTO?
    var provider: HomeProviderProtocol?
}
