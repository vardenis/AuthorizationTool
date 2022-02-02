//
//  ViewController.swift
//  AuthorizationTool
//
//  Created by Денис on 01.02.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let userName = "Alexey"
    let passwordUser = "Efimov"

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userNameTF.delegate = self
        userNameTF.returnKeyType = .next
        
        passwordTF.delegate = self
        passwordTF.returnKeyType = .done
        
        addTapGestureToHideKeyboard()
    }

    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else if textField == passwordTF {
            accessCheck()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        guard let userName = userNameTF.text, !userName.isEmpty else { return }
        welcomeVC.welcomeValue = "Welcome, \(userName)"
    }
    
    @IBAction func showUserName() {
        showAlert(title: "Reminder", massage: "Your name - \(userName)")
    }
    
    @IBAction func showPassword() {
        showAlert(title: "Reminder", massage: "Your password - \(passwordUser)")
    }
    
    @IBAction func accessCheck() {
        if userName != userNameTF.text || passwordUser != passwordTF.text {
            showAlert(title: "Invalid login or password", massage: "Enter correct username or password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
   private func addTapGestureToHideKeyboard() {
       let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
       view.addGestureRecognizer(tapGesture)
   }
}
