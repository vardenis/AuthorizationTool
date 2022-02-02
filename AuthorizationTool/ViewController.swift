//
//  ViewController.swift
//  AuthorizationTool
//
//  Created by Денис on 01.02.2022.
//

import UIKit

class ViewController: UIViewController {
    let userName = "Alexey"
    let passwordUser = "Efimov"

    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.text = ""
    }

    @IBAction func showUserName() {
        showAlert(title: "Reminder", massage: "Your name - \(userName)")
    }
    
    @IBAction func showPassword() {
        showAlert(title: "Reminder", massage: "Your password - \(passwordUser)")
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
}
