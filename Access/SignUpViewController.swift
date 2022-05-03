//
//  SignUpViewController.swift
//  Access
//
//  Created by Ivan Mendoza on 4/27/22.
//

import UIKit

class SignUpViewController: UIViewController {


    
    @IBOutlet weak var handicapButton: UIButton!
    @IBOutlet weak var visualButton: UIButton!
    @IBOutlet weak var auditoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
