//
//  LoginBottomSheetViewModel.swift
//  Remaider
//
//  Created by Arley Souto on 02/02/25.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    var successResult: (() -> Void)? //isso é uma clousures
    
    func doAuth(userNameLogin: String, password: String){
        Auth.auth().signIn(withEmail: userNameLogin, password: password) { [weak self] AuthDataResult, error in
            if let error = error {
                print("Error: \(error)")
                return
            }else{
                self?.successResult?()
            }
            
        }
    }
}
