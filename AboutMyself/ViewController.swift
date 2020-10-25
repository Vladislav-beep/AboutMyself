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

    @IBAction func ForgotNameButtonPressed() {
        guard let inputText = UserNameTextField.text, inputText.isEmpty else {
        showAlert(with: "Oops!", and: "Your login is User")
            return
        }
    }
    
    @IBAction func ForgotPasswordButtonPressed() {
    }
    
    
}
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) {_ in self.UserNameTextField.text = "" }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
