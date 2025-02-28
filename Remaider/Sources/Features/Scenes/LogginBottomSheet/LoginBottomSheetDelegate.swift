//
//  LoginBottomSheetDelegate.swift
//  Remaider
//
//  Created by Arley Souto on 31/01/25.
//

import Foundation
import UIKit

protocol LoginBottomSheetDelegate: AnyObject {
    func sendLoginData(user: String, password: String)
}
