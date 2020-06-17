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
import CoreLocation

class CreateNoteViewController: UIViewController {
    let notePlaceholder = "Type your note"
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextField: UITextView!
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var tabBar: UITabBar!
    @State var noteSubscription: AnyCancellable?
    let locationManager = CLLocationManager()
    var locationString:String?
    var username:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextField.text = notePlaceholder
        noteTextField.textColor = UIColor.lightGray
        noteTextField.delegate = self

        titleTextField.becomeFirstResponder()
        
        tabBar.delegate = self
        
        //Cleaning shared variable
        AppDelegate.shared().category = ""
        
        //Setting up Navigation Bar
        setNavigationItems()
        
        //Getting username
        username = UserDefaults.standard.string(forKey: "username")
        print("User: ")
        print(UserDefaults.standard.string(forKey: "username") ?? "")
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        var title:NSAttributedString?
        
        if (AppDelegate.shared().category == ""){
            title = NSAttributedString(string: "Category")
        }else{
            title = NSAttributedString(string: AppDelegate.shared().category)
        }
        categoryButton.setAttributedTitle(title, for: .normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @objc func showImages() {
        
    }
    
    @objc func saveNote() {
        print("Save & Back")
        saveOnAWS()
        
    }
    
    @objc func deleteNote() {
        print("Delete")
        
    }
    
    func getDateTime(_ type:String)->String{
        //Getting current date and time
        let formatter = DateFormatter()
        let now = Date()
        
        if type == "DATE"{
            formatter.dateFormat = "yyyy-MM-dd"
        }else{
            formatter.dateFormat = "HH:mm:ss"
        }
        
        let dateString = formatter.string(from:now)
        print(dateString)
        
        return dateString
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
                            noteDate: getDateTime("DATE"),
                            noteTime: getDateTime("TIME"),
                            location: locationString ?? "",
                            user: username ?? "")

            Amplify.DataStore.save(note) { (result) in
                        switch(result) {
                        case .success(let savedNote):
                            print("Saved item: \(savedNote)")
                            self.publish()
                        case .failure(let error):
                            print("Could not save item to datastore: \(error)")
                        }

                     }
            self.navigationController?.popViewController(animated: true)
        }else{
            self.navigationController?.popViewController(animated: true)
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
        let deleteButton = UIBarButtonItem()
        //backButton.image = UIImage(named: "back")
        backButton.title = "Save & Back"
        backButton.style = .plain
        backButton.action = #selector(saveNote)
        navigationItem.leftBarButtonItem = backButton
        
        deleteButton.image = UIImage(systemName: "trash")
        deleteButton.style = .plain
        deleteButton.action = #selector(deleteNote)
        navigationItem.rightBarButtonItem = deleteButton
        
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

extension CreateNoteViewController: CLLocationManagerDelegate {
    
    @IBAction func locationPressed(_ sender: UIButton) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            locationString = "\(lat),\(lon)"
            print("Location: \(locationString!)")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
