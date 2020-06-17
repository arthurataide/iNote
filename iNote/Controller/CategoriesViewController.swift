//
//  CategoriesViewController.swift
//  iNote
//
//  Created by Jose Smith Marmolejos on 2020-06-16.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    @IBOutlet weak var categoriesPicker: UIPickerView!
    var categories = ["No Category", "Gym","School","Recipe","Home"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesPicker.delegate = self

        // Do any additional setup after loading the view.
    }
    @IBAction func addNewTapped(_ sender: UIButton) {
        newCategory()
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
        if categories[index] == "No Category"{
            AppDelegate.shared().category = ""
        }else{
            AppDelegate.shared().category = categories[index]
        }
        print(AppDelegate.shared().category)
        dismiss(animated: true, completion: nil)
    }
    
}

extension CategoriesViewController:UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        index = row
        print(index)
        
    }
    
    func newCategory() {
        let alertController = UIAlertController(title: "Category", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "New category"
        }
        let saveAction = UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            if let cat = firstTextField.text{
                //self.confirmAccount(code: code)
            }
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            (action : UIAlertAction!) -> Void in })
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
}
