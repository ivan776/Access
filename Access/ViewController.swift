//
//  ViewController.swift
//  Access
//
//  Created by Ivan Mendoza on 4/25/22.
//

import UIKit
import Parse

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
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if(user != nil) {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
                
                let alertDisapperTimeInSeconds = 1.5
                let alert = UIAlertController(title: nil, message: "Sign In Error", preferredStyle: .actionSheet)
                self.present(alert, animated: true)
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + alertDisapperTimeInSeconds) {
                  alert.dismiss(animated: true)
                }
                
            }
        }
    }
    

}

