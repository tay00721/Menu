//
//  ErrorHelper.swift
//  Menu
//
//  Created by Mac on 14/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation


enum GeneralError: Error{
    case UsernameInvalid
    case PasswordInvalid
    case CannotFoundUser
}

final class ErrorHelper {
    class func errorMessage(generalError:GeneralError) -> String {
        switch generalError {
        case .UsernameInvalid,.PasswordInvalid,.CannotFoundUser:
            return "Username or Password are incorrect, Please try again."
        }
    }
}
