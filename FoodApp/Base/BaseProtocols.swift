//
//  BaseProtocols.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation

protocol BaseViewControllerProtocol: class {
    var basePresenter: BasePresenterProtocol? {get set}
}

// Protocol used to the Presenter can communicate with View
protocol BaseViewProtocol: class {
    
}

// Protocol used to the View can communicate with Presenter
protocol BasePresenterProtocol: class {
    func viewDidLoad()
    func viewWillAppear(isFirstPresentation: Bool)
    func viewDidAppear(isFirstPresentation: Bool)
}

extension BasePresenterProtocol {
    func viewDidLoad() {
        // Optional method
    }
    func viewWillAppear(isFirstPresentation: Bool) {
        // Optional method
    }
    func viewDidAppear(isFirstPresentation: Bool) {
        // Optional method
    }
}

// Protocol used to the Presenter can communicate with Interactor
protocol BaseInteractorInputProtocol: class {

}

// Protocol used to the Interactor can communicate with Presenter
protocol BaseInteractorOutputProtocol: class {
    
}

// Protocol used to the Presenter can communicate with Router
protocol BaseRouterProtocol: class {
    
}
