//
//  TabBarViewController.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-16.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins
import Combine

class TabBarViewController: UITabBarController {

    @IBOutlet weak var mainTabBar: UITabBar!
    
    let saveButton = UIBarButtonItem()
    let backButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        navigationItem.leftBarButtonItem = editButtonItem
        mainTabBar.unselectedItemTintColor = #colorLiteral(red: 0.1331507564, green: 0.2934899926, blue: 0.3668411672, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(logOut))
        self.title = "iNotes"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear: TAP")
        
        saveButton.title = "Save"
        saveButton.style = .plain
        saveButton.action = #selector(CreateNoteViewController.saveNote)
        
        backButton.title = "Back"
        backButton.style = .plain
        backButton.action = #selector(goToMain)
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        AppDelegate.shared().edit = editing
        AppDelegate.shared().anin = animated
        if editing {
           NotificationCenter.default.post(name: Notification.Name(rawValue: "editMode"), object: nil)
         //UIBarButtonItem(title: "Delete", style: .plain, target: self, action: #selector(deleteNote))
         navigationItem.rightBarButtonItem =   UIBarButtonItem(image: UIImage(systemName: "trash"), landscapeImagePhone: UIImage(systemName: "trash"), style: .plain, target: self, action: #selector(deleteNote))
        } else {
            NotificationCenter.default.post(name: Notification.Name(rawValue: "editMode"), object: nil)
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(logOut))
        }

    }
    
    @objc func deleteNote(){
        ///code something here
        NotificationCenter.default.post(name: Notification.Name(rawValue: "deleteItemCollection"), object: nil)
        //("ALOHA")
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        print (item.tag)
        switch item.tag {
            case 1:
                showSignOut()
            case 2:
                showSave()
            case 3:
                showSignOut()
            default :
                print("Something went wrong !!")
        }
    }
    
    func showSave() {
        mainTabBar.isHidden = true
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem = saveButton
        navigationItem.leftBarButtonItem = backButton
        
    }
    
    @objc func goToMain(){
        print("goToMain")
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "clearFields"), object: nil)
        
        self.selectedIndex = 0
        mainTabBar.isHidden = false
        showSignOut()
    }
    
    func showSignOut() {
        mainTabBar.isHidden = false
        navigationItem.leftBarButtonItem = editButtonItem
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(logOut))
    }
    
    @objc func logOut(){
           _ = Amplify.Auth.signOut() { result in
               switch result {
               case .success:
                   DispatchQueue.main.async {
                       print("Successfully signed out")
                       self.navigationController?.popViewController(animated: true)
                   }
               case .failure(let error):
                   print("Sign out failed with error \(error)")
               }
           }
       }
}
