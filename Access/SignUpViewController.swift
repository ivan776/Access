//
//  SignUpViewController.swift
//  Access
//
//  Created by Ivan Mendoza on 4/27/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var physical: UIButton!
    @IBOutlet weak var auditory: UIButton!
    @IBOutlet weak var visual: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "mainPageSegue", sender: nil)
               
            } else {
                print("Error: \(error?.localizedDescription)")
                let alertDisapperTimeInSeconds = 1.5
                let alert = UIAlertController(title: nil, message: "Sign Up Error!", preferredStyle: .actionSheet)
                self.present(alert, animated: true)
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + alertDisapperTimeInSeconds) {
                  alert.dismiss(animated: true)
                }
            }
        }
    }
    
    @IBAction func physicalClicked(_ sender: UIButton) {
        if sender.isSelected{
              sender.isSelected = false
            }
            else{
              sender.isSelected = true
            }
    }
    @IBAction func auditoryClicked(_ sender: UIButton) {
        if sender.isSelected{
              sender.isSelected = false
            }
            else{
              sender.isSelected = true
            }
    }
    @IBAction func visualClicked(_ sender: UIButton) {
        if sender.isSelected{
              sender.isSelected = false
            }
            else{
              sender.isSelected = true
            }
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
