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
    override func viewDidLoad() {
        super.viewDidLoad()

        mainTabBar.unselectedItemTintColor = #colorLiteral(red: 0.1331507564, green: 0.2934899926, blue: 0.3668411672, alpha: 1)
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
        
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
