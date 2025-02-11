//
//  UserDefaultManager.swift
//  Remaider
//
//  Created by Arley Souto on 11/02/25.
//

import Foundation

class UserDefaultManager {
    private static let userKey = "userKey"
    
    static func saveUser(user: User){
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(user) {
            UserDefaults.standard.set(data, forKey: userKey)
            UserDefaults.standard.synchronize()
        }
    }
    
    static func loadUser() -> User?{
        if let userData = UserDefaults.standard.data(forKey: userKey) {
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: userData) {
                return user
            }
        }
        return nil
    }
    
}
