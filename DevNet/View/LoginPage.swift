//
//  LoginPage.swift
//  DevNet
//
//  Created by Shreyesh on 10/19/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import FirebaseAuth
import SkyFloatingLabelTextField

class LoginPage: UIViewController {
    
    
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextField!
    
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        emailTextField.placeholder="Email Address"
        emailTextField.title="Email"
        passwordTextField.placeholder="Password"
        passwordTextField.title="Password"
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if (error==nil && user != nil){
                print("User signed in")
                self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
            }
            else {
                print("User doesn't exist")
            }
        }
        
    }

}
