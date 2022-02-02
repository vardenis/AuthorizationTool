//
//  WelcomeViewController.swift
//  AuthorizationTool
//
//  Created by Денис Вареников on 02.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeTF: UILabel!
    
    var welcomeValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeTF.text = welcomeValue
    }
    
}
