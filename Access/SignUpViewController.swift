//
//  SignUpViewController.swift
//  Access
//
//  Created by Ivan Mendoza on 4/27/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var handicapButton: UIButton!
    @IBOutlet weak var visualButton: UIButton!
    @IBOutlet weak var auditoryButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    
    @IBAction func handicapButtonClicked(_ sender: Any) {
        if sender.isSelected{
            sender.isSelect = false
        }
        else{
            sender.isSelect = true
        }
    }
    @IBAction func visualButtonClicked(_ sender: Any) {
        if sender.isSelected{
            sender.isSelect = false
        }
        else{
            sender.isSelect = true
        }
    }
    @IBAction func auditoryButtonClicked(_ sender: Any) {
        if sender.isSelected{
            sender.isSelect = false
        }
        else{
            sender.isSelect = true
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
