//
//  ViewControllerFactoryProtocol.swift
//  Remaider
//
//  Created by Arley Souto on 10/02/25.
//

import Foundation

protocol ViewControllerFactoryProtocol:AnyObject {
    func makeSplashViewController(flowDelegate: SplashFlowDelegate) -> SplashViewController
    func makeLoginBottomSheetViewController(flowDelegate: LoginBottomSheetFlowDelegate) -> LogginBottomSheetViewController
}
