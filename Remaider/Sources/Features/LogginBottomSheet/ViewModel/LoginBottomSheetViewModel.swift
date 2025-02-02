//
//  LoginBottomSheetViewModel.swift
//  Remaider
//
//  Created by Arley Souto on 02/02/25.
//

import Foundation
import Firebase

class LoginBottomSheetViewModel {
    func doAuth(userNameLogin: String, password: String){
        Auth.auth().signIn(withEmail: userNameLogin, password: password) { [weak self] AuthDataResult, error in
            
            if let error = error {
                print("Error: \(error)")
                return
            }else{
                print(AuthDataResult?.user ?? "User not found")
            }
            
        }
    }
}
