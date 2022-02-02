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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
