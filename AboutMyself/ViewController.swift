//
//  ViewController.swift
//  AboutMyself
//
//  Created by Владислав Сизонов on 24.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UserNameTextField: UITextField!
    
    @IBOutlet var ForgotNameButton: UIButton!
    @IBOutlet var ForgotPasswordButton: UIButton!
    
    @IBOutlet var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func logInButtonPressed() {
        if UserNameTextField.text != Login.login && PasswordTextField.text != Login.password {
            showAlert(with: "Oops!", and: "Login or password is incorrect")
        }
    }
    
    
    @IBAction func forgotUserNameButtonPressed() {

        showAlert(with: "Oops!", and: "Your login is \(Login.login)")
    }
    
    
    @IBAction func forgotPasswordButtonPressed() {
        
        showAlert(with: "Oops!", and: "Your password is \(Login.password)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UserNameTextField.text = ""
        PasswordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
}
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) {_ in self.PasswordTextField.text = "" }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
}



