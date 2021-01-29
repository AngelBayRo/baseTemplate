//
//  HomeRouter.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation

protocol HomeRouterProtocol: BaseRouterProtocol {
    func goToFoodList()
}

final class HomeRouter: BaseRouter {
    weak var view: HomeViewProtocol? {
        return super.baseView as? HomeViewProtocol }
}

extension HomeRouter: HomeRouterProtocol {
    func goToFoodList() {
        
    }
    
}
