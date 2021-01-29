//
//  HomeAssembly.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import UIKit

class HomeAssembly: BaseAssembly {
    static func homeNavigationView(assemblyDTO: HomeAssemblyDTO? = nil) -> UINavigationController {
        return UINavigationController(rootViewController: homeView(assemblyDTO: assemblyDTO))
    }
    
    static func homeView(assemblyDTO: HomeAssemblyDTO? = nil) -> HomeViewController {
        let view = HomeViewController(nibName: "HomeViewController", bundle: nil)
        
        let viper = BaseAssembly.assembly(baseView: view,
                                          presenter: HomePresenter.self,
                                          router: HomeRouter.self,
                                          interactor: HomeInteractor.self)
        viper.interactor.homeAssemblyDTO = assemblyDTO
        //viper.interactor.homeProvider = DataAssembly.homeProvider(interactor: viper.interactor)
        return view
    }
}
struct HomeAssemblyDTO {
    
}
