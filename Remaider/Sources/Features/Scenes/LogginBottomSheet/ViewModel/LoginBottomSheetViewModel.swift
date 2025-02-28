//
//  LoginBottomSheetViewModel.swift
//  Remaider
//
//  Created by Arley Souto on 02/02/25.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    var successResult: ((String) -> Void)? //isso é uma clousures
    var errorResult: ((String) -> Void)? //clousures para error
    
    func doAuth(userNameLogin: String, password: String){
        Auth.auth().signIn(withEmail: userNameLogin, password: password) { [weak self] AuthDataResult, error in
            if let error = error {
                self?.errorResult?("Error ao realizar o login")
            }else{
                self?.successResult?(userNameLogin)
            }
            
        }
    }
}
