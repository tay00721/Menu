//
//  LoginViewController.swift
//  Menu
//
//  Created by Mac on 13/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var UsernameTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    var loginAPIManager: LoginAPIManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        loginAPIManager?.login(optionalUsername: UsernameTextField.text, optionalPassword: PasswordTextField.text)
    }
    
        private func setupView(){
            setupTextField()
        }
        private func setupTextField(){
            let textField = [UsernameTextField,PasswordTextField]
            textField.forEach{$0?.delegate = self}
        }
        private func setupData(){
            setupServices()
        }
        private func setupServices(){
            loginAPIManager = LoginAPIManagerImplementation()
            loginAPIManager?.setLoginAPIManagerDelegate(self)
        }
        
    }
    extension LoginViewController:UITextFieldDelegate{
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == UsernameTextField {
                PasswordTextField.becomeFirstResponder()
            }
            else if textField == PasswordTextField {
                loginAPIManager?.login(optionalUsername: UsernameTextField.text, optionalPassword: PasswordTextField.text)
                PasswordTextField.resignFirstResponder()
            }
            return true
        }
    }

    extension LoginViewController: LoginAPIManagerDelegate{
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let menuViewController = segue.destination as! MenuViewController
            menuViewController.userName = UsernameTextField.text!
    }
        func didLoginCompletion(user: User) {
           performSegue(withIdentifier: "LoginCompletedIdentifier", sender: nil)
           }
        
        func didLoginFailure(error: Error) {
            let alertController = UIAlertController(title: "Warning", message: ErrorHelper.errorMessage(generalError: error as! GeneralError), preferredStyle: .alert )
            let confirmAction = UIAlertAction(title: "Confirm", style: .cancel, handler: nil)
            alertController.addAction(confirmAction)
            present(alertController,animated: true,completion: nil)
        }
}
