//
//  HomePresenter.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation

protocol HomePresenterProtocol: BasePresenterProtocol {
    
}

protocol HomeInteractorOutputProtocol: BaseInteractorOutputProtocol {
    
}

class HomePresenter: BasePresenter {
    // MARK: VIPER Dependencies
    weak var view: HomeViewProtocol? {
        return super.baseView as? HomeViewProtocol }
    var router: HomeRouterProtocol? {
        return super.baseRouter as? HomeRouterProtocol }
    var interactor: HomeInteractorInputProtocol? {
        return super.baseInteractor as? HomeInteractorInputProtocol }
    
}
