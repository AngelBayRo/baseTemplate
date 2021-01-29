//
//  BaseAssembly.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import Foundation
import UIKit

class BaseAssembly {
    @discardableResult static func assembly<V: BaseViewControllerProtocol,
        P: BasePresenter,
        R: BaseRouter,
        I: BaseInteractor>(baseView: V, presenter: P.Type, router: R.Type, interactor: I.Type) -> (view: V, presenter: P, interactor: I, router: R) {

        let basePresenter = P()
        let baseRouter = R()
        let baseInteractor = I()

        baseView.basePresenter = basePresenter as? BasePresenterProtocol

        basePresenter.baseView = baseView as? BaseViewProtocol
        basePresenter.baseRouter = baseRouter as? BaseRouterProtocol
        basePresenter.baseInteractor = baseInteractor as? BaseInteractorInputProtocol

        baseRouter.baseView = baseView as? UIViewController

        baseInteractor.basePresenter = basePresenter as? BaseInteractorOutputProtocol

        return (baseView, basePresenter, baseInteractor, baseRouter)
    }
    
}
