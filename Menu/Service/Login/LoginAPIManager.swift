//
//  LoginAPIManager.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation

protocol LoginAPIManager {
    func login(optionalUsername:String?, optionalPassword:String?)
    func setLoginAPIManagerDelegate(_ delegate: LoginAPIManagerDelegate)
}

protocol LoginAPIManagerDelegate {
    func didLoginCompletion (user:User)
    func didLoginFailure (error:Error)
}

final class LoginAPIManagerImplementation : LoginAPIManager {
    let apiClient : LoginAPIClient
    var delegate : LoginAPIManagerDelegate?
    init (apiClient:LoginAPIClient = LoginAPIClientImplementation()){
        self.apiClient = apiClient
    }
    func setLoginAPIManagerDelegate(_ delegate: LoginAPIManagerDelegate){
        self.delegate = delegate}
    func login(optionalUsername:String?, optionalPassword:String?){
        apiClient.login(optionalUsername: optionalUsername, optionalPassword: optionalPassword){
        (optionalUser,optionalError) in
        if let error = optionalError {
            self.delegate?.didLoginFailure(error: error)
            return
        }
        if let user = optionalUser {
            self.delegate?.didLoginCompletion(user: user)
            return
        }
    }
}
}
