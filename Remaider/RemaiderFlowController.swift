//
//  RemaiderFlowController.swift
//  Remaider
//
//  Created by Arley Souto on 09/02/25.
//

import Foundation
import UIKit

class RemaiderFlowController{
    //MARK: - Properties
    private var navigationController: UINavigationController?
    private let viewControllerFactory: ViewControllerFactoryProtocol
    //MARK: - init
    public init(){
        self.viewControllerFactory = ViewControllersFactory()
    }
    
    required init ?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - startFlow
    func start() -> UINavigationController?{
        let startViewController = viewControllerFactory.makeSplashViewController(flowDelegate: self)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
        
    }
}

//MARK: - Login
extension RemaiderFlowController: LoginBottomSheetFlowDelegate{
    func navigateToHome() {
        self.navigationController?.dismiss(animated: true)
        let viewController = UIViewController()
        viewController.view.backgroundColor = .red
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}

//MARK: - Splash
extension RemaiderFlowController: SplashFlowDelegate{
    func openLoginBottomSheet() {
        let loginBottomSheet = viewControllerFactory.makeLoginBottomSheetViewController(flowDelegate: self)
        loginBottomSheet.modalPresentationStyle = .overCurrentContext
        loginBottomSheet.modalTransitionStyle = .crossDissolve

        navigationController?.present(loginBottomSheet, animated: false) {
            loginBottomSheet.animateShow()
        }
    }
    
    
}
