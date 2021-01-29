//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Angel Luis Bayon Romero on 13/11/2020.
//

import UIKit
import Lottie

protocol HomeViewProtocol: BaseViewProtocol {
    
}

class HomeViewController: BaseView {
    // MARK: VIPER Dependencies
    var presenter: HomePresenterProtocol? { return super.basePresenter as? HomePresenterProtocol }
    
    private var animationView: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        animationView = .init(name: "foodLottie")
        animationView!.frame = view.bounds
          
        animationView?.contentMode = .scaleAspectFit
        animationView?.loopMode = .loop
        animationView?.animationSpeed = 1
        
        view.addSubview(animationView!)
        
        animationView?.play()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.animationView?.alpha = 0
        }, completion: { _ in })
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
    }

}
