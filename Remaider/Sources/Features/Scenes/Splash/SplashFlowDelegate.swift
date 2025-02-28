//
//  SplashFlowDelegate.swift
//  Remaider
//
//  Created by Arley Souto on 10/02/25.
//

import Foundation

public protocol SplashFlowDelegate: AnyObject {
    func openLoginBottomSheet()
    func navigateToHome()
}
