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
    //MARK: - Splash
    //MARK: - Login
    //MARK: - init
    public init(){}
    
    required init ?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - startFlow
    func start() -> UINavigationController?{
        let startViewController = SplashViewController()
        self.navigationController = UINavigationController(rootViewController: startViewController)
        return navigationController
        
    }
    
}
