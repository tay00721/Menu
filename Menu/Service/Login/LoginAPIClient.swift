//
//  LoginAPIClient.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

protocol LoginAPIClient {
    func login(optionalUsername:String?, optionalPassword:String?, completion: @escaping (_ user:User?, _ error:Error?) -> ())
}

final class LoginAPIClientImplementation : LoginAPIClient {
    func login(optionalUsername:String?, optionalPassword:String?, completion: @escaping (_ user:User?, _ error:Error?) -> ()){
        guard let username = optionalUsername else{
            completion(nil, GeneralError.UsernameInvalid)
            return
        }
        guard let password = optionalPassword else{
            completion(nil, GeneralError.PasswordInvalid)
            return
        }
        let userFiltered = users.filter{$0.username == username && $0.password == password}
        guard let currentUser = userFiltered.first else {
            completion(nil, GeneralError.CannotFoundUser)
            return
        }
            completion(currentUser,nil)
    }
}
