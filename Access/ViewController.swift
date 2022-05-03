//
//  ViewController.swift
//  Access
//
//  Created by Ivan Mendoza on 4/25/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onSignOn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
    }
    

}

