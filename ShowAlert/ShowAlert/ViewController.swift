//
//  ViewController.swift
//  ShowAlert
//
//  Created by Muharrem Köroğlu on 22.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: Any) {
        
        func showAlert (title: String, message : String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel)
            alert.addAction(okButton)
            self.present(alert, animated: true)
            
        }
        
        if userNameTextField.text == ""{
            showAlert(title: "Error!", message: "User name cannot be empty")
 
        }else if passwordTextField.text == "" {
            showAlert(title: "Error!", message: "Password cannot be empty")
        }else if passwordConfirmTextField.text != passwordTextField.text {
            showAlert(title: "Error!", message: "Passwords does not match")
        }else {
            showAlert(title: "Success", message: "Registration completed successfully")
        }
        
    }

}

