//
//  CreateNoteViewController.swift
//  iNote
//
//  Created by Jose Smith Marmolejos on 2020-06-15.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import SwiftUI
import Amplify
import AmplifyPlugins
import Combine

class CreateNoteViewController: UIViewController {
    let notePlaceholder = "Type your note"
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextField: UITextView!
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var tabBar: UITabBar!
    @State var noteSubscription: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextField.text = notePlaceholder
        noteTextField.textColor = UIColor.lightGray
        noteTextField.delegate = self

        titleTextField.becomeFirstResponder()
        
        tabBar.delegate = self
        
        setNavigationItems()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @objc func showImages() {
        
    }
    
    @objc func saveNote() {
        print("Save & Back")
        //self.navigationController?.popViewController(animated: true)
        saveOnAWS()
        
    }
    
    func saveOnAWS() {
        guard var title = titleTextField.text, let note = noteTextField.text else {
            return
        }

        if (title != "" || note != ""){

            if (title == ""){
                title = "Untitled"
            }
            let note = Note(
                            title: title,
                            note: note,
                            category: "No Category",
                            noteDate: "No Date",
                            noteTime: "No Time",
                            location: "No Location",
                            user: "No User")

            Amplify.DataStore.save(note) { (result) in
                        switch(result) {
                        case .success(let savedNote):
                            print("Saved item: \(savedNote)")
                            self.publish()
                        case .failure(let error):
                            print("Could not save item to datastore: \(error)")
                        }

                     }

           }

    }
    
    func publish()  {
        print("Pushing")
        self.noteSubscription
        = Amplify.DataStore.publisher(for: Note.self)
            .sink(receiveCompletion: { completion in
                print("Subscription has been completed: \(completion)")
            }, receiveValue: { mutationEvent in
                print("Subscription got this value: \(mutationEvent)")
            })
        
    }
    
    func setNavigationItems() {
        let backButton = UIBarButtonItem()
        //backButton.image = UIImage(named: "back")
        backButton.title = "Save & Back"
        backButton.style = .plain
        backButton.action = #selector(saveNote)

        navigationItem.leftBarButtonItem = backButton
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Images", style: .plain, target: self, action: #selector(showImages))
    }
    
    
}

extension CreateNoteViewController:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = notePlaceholder
            textView.textColor = UIColor.lightGray
        }
    }
}
extension CreateNoteViewController:UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("SELECT: \(item)")
    }
}
