//
//  LogInViewController.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-10.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins

class LogInViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        usernameTextField.text = "jsmr"
//        passwordTextField.text = "12345678"
        //UserDefaults.standard.set(usernameTextField.text, forKey: "username")
        
        print("User: ")
        print(UserDefaults.standard.string(forKey: "username") ?? "")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fetchCurrentAuthSession()
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        hideButtons(hide: false)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
    }
    
    func saveUser(username:String) {
        //print("saveUser: ")
        //print(username)
        UserDefaults.standard.set(username, forKey: "username")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func hideButtons(hide: Bool) {
        activityIndicator.isHidden = !hide
        signInButton.isHidden = hide
        googleButton.isHidden = hide
        label.isHidden = hide
    }
    
    @IBAction func signInTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text, let password = passwordTextField.text else {
            return
        }
        
        if username != "" {
            if password != ""{
                hideButtons(hide: true)
                activityIndicator.startAnimating()

                signIn(username: username, password: password)
            }else{
                showMessage("User", "Password is required", "OK")
                passwordTextField.becomeFirstResponder()
                hideButtons(hide: false)
            }
        }else{
            showMessage("User", "Username is required", "OK")
            usernameTextField.becomeFirstResponder()
            hideButtons(hide: false)
        }
    }
    
    @IBAction func signInGoogleTapped(_ sender: Any) {
        _ = Amplify.Auth.signInWithWebUI(for: .google, presentationAnchor: self.view.window!) { result in
            switch result {
            case .success(_):
                print("Sign in succeeded")
            case .failure(let error):
                print("Sign in failed \(error)")
            }
        }
//        func signInWithWebUI() {
//            _ = Amplify.Auth.signInWithWebUI(presentationAnchor: self.view.window!) { result in
//                switch result {
//                case .success(_):
//                    print("Sign in succeeded")
//                case .failure(let error):
//                    print("Sign in failed \(error)")
//                }
//            }
//        }
    }
    
    func fetchCurrentAuthSession() {
        _ = Amplify.Auth.fetchAuthSession { result in
            switch result {
            case .success(let session):
                if (session.isSignedIn){
                    DispatchQueue.main.async {
                        self.goToNote()
                    }
                }
                print("Is user signed in - \(session.isSignedIn)")
            case .failure(let error):
                print("Fetch session failed with error \(error)")
            }
        }
    }
    
    func signIn(username: String, password: String) {
        _ = Amplify.Auth.signIn(username: username, password: password) { result in
            switch result {
            case .success(let success):
                print("Sign in succeeded \(success)")
                if (success.isSignedIn){
                    self.saveUser(username: username)
                    print("User: \(username)")
                    DispatchQueue.main.async {
                        self.goToNote()
                    }
                }else{
                    print("Need confirmation")
                    DispatchQueue.main.async {
                        self.showConfirmMessage()
                        self.hideButtons(hide: false)
                    }
                }
            //self.fetchCurrentAuthSession()
            case .failure(let error):
                print("Sign in failed \(error)")
                DispatchQueue.main.async {
                    self.showMessage("User", error.errorDescription.description, "OK")
                    self.hideButtons(hide: false)
                }
                //self.fetchCurrentAuthSession()
            }
        }
    }
    
    func goToNote() {
        performSegue(withIdentifier: "loginToNote", sender: self)
    }
    
    func showMessage(_ title:String, _ message:String, _ actionMessage:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString(actionMessage, comment: actionMessage), style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    
    func showConfirmMessage() {
        let alertController = UIAlertController(title: "Confirm Account", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter the code"
        }
        let saveAction = UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            if let code = firstTextField.text{
                self.confirmAccount(code: code)
            }
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            (action : UIAlertAction!) -> Void in })
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func confirmAccount(code:String){
        if let username = usernameTextField.text{
            confirmSignUp(for: username, with: code)
        }
    }
    
    func confirmSignUp(for username: String, with confirmationCode: String) {
        _ = Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success(_):
                DispatchQueue.main.async {
                    self.showMessage("User", "Confirm signUp succeeded", "OK")
                }
                print("Confirm signUp succeeded")
            case .failure(let error):
                DispatchQueue.main.async {
                    self.showMessage("User", "An error occured while registering a user", "OK")
                }
                print("An error occured while registering a user \(error)")
            }
        }
    }

    
}
