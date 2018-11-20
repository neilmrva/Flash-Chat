//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController
{
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func registerPressed(_ sender: AnyObject)
    {
        let email = emailTextfield.text!
        let password = passwordTextfield.text!
        
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: email, password: password)
        {
            (result, error) in
            
            if let error = error
            {
                print(error)
            }
            else
            {
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
}
