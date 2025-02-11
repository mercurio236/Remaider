//
//  ViewControllersFactory.swift
//  Remaider
//
//  Created by Arley Souto on 10/02/25.
//

import Foundation
import UIKit

final class ViewControllersFactory: ViewControllerFactoryProtocol {
    func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController {
        let contentView = SplashView()
        let viewController = SplashViewController(contentView: contentView,flowDelegate: flowDelegate)
        return viewController
    }
    
    func makeLoginBottomSheetViewController(flowDelegate: LoginBottomSheetFlowDelegate) -> LogginBottomSheetViewController {
        let contentView = LogginBottomSheetView()
        let viewController = LogginBottomSheetViewController(contentView: contentView, flowDelegate: flowDelegate)
        return viewController
    }
    
    
}

