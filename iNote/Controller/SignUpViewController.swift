//
//  SignUpViewController.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-10.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        emailTextField.layer.borderWidth = 1.0
//        emailTextField.layer.masksToBounds = true
//        emailTextField.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
//        emailTextField.layer.cornerRadius = 15
        //emailTextField.backgroundColor = UIColor.clear
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        if (vaidateFields()){
            signUp(username: usernameTextField.text!,
                   password: passwordTextField.text!,
                   email: emailTextField.text!,
                   givenName: firstNameTextField.text!,
                   familyName: lastNameTextField.text!)
            
        }
    }
    @IBAction func signUpGoogleTapped(_ sender: UIButton) {
        
    }
    
    func vaidateFields() -> Bool {
        if (usernameTextField.text!.isEmpty){
            showMessage("Sign Up", "Username is required.", "OK")
            return false
        }
        
        if (firstNameTextField.text!.isEmpty){
            showMessage("Sign Up", "First Name is required.", "OK")
            return false
        }
        
        if (lastNameTextField.text!.isEmpty){
            showMessage("Sign Up", "Last Name is required.", "OK")
            return false
        }
        
        if (emailTextField.text!.isEmpty){
            showMessage("Sign Up", "Email is required.", "OK")
            return false
        }
        
        if (passwordTextField.text!.isEmpty){
            showMessage("Sign Up", "Password is required.", "OK")
            return false
        }
        
        if (passwordTextField.text! != confirmPasswordTextField.text!){
            showMessage("Sign Up", "Please make sure passwords match.", "OK")
            return false
        }
        
        if (!emailTextField.text!.contains("@") || !emailTextField.text!.contains(".")){
            showMessage("Sign Up", "Please enter a valid Email address. For example jhon@email.com.", "OK")
            return false
        }
        
        return true
    }
    
    func showMessage(_ title:String, _ message:String, _ actionMessage:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString(actionMessage, comment: actionMessage), style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func signUp(username: String, password: String, email: String, givenName:String, familyName:String) {
        let userAttributes = [AuthUserAttribute(.email, value: email),
                              AuthUserAttribute(.givenName, value: givenName),
                              AuthUserAttribute(.familyName, value: familyName)]
        
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        _ = Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                var message = ""
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    message = "SignUp Complete. Must confirm account."
                    print("Delivery details \(String(describing: deliveryDetails))")
                } else {
                    message = "SignUp Complete"
                }
                DispatchQueue.main.async {
                    self.successSignUp(message)
                }
                print(message)
            case .failure(let error):
                DispatchQueue.main.async {
                    self.showMessage("Sign Up", "An error occured while registering a user \(error)", "OK")
                }
                print("An error occured while registering a user \(error)")
            }
        }
    }
    
    func successSignUp(_ message:String) {
        let alert = UIAlertController(title: "Sign Up", message:message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "OK"), style: .default,handler: { alert -> Void in
            self.navigationController?.popViewController(animated: true)
        }))
        self.present(alert, animated: true, completion: nil)
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
