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
    var delegate:CategoryDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesPicker.delegate = self
        getStoredCategories()
        categoriesPicker.reloadAllComponents()
        
        for i in 0 ... categories.count - 1{
            if categories[i] == AppDelegate.shared().category{
                index = i
                break
            }
        }
        
        categoriesPicker.selectRow(index, inComponent: 0, animated: true)
    }
    @IBAction func addNewTapped(_ sender: UIButton) {
        newCategory()
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
//        if categories[index] == "No Category"{
//            AppDelegate.shared().category = ""
//        }else{
//            AppDelegate.shared().category = categories[index]
//        }
//        print(AppDelegate.shared().category)
//        delegate?.CategorySelected(AppDelegate.shared().category)
//        dismiss(animated: true, completion: nil)
        //self.navigationController?.dismiss(animated: true)
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
        if categories[index] == "No Category"{
            AppDelegate.shared().category = ""
        }else{
            AppDelegate.shared().category = categories[index]
        }
        print(AppDelegate.shared().category)
        delegate?.CategorySelected(AppDelegate.shared().category)
    }
    
    func newCategory() {
        let alertController = UIAlertController(title: "Category", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "New category"
        }
        let saveAction = UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            if let cat = firstTextField.text{
                print(cat)
                self.storeCategory(cat)
                self.getStoredCategories()
                self.categoriesPicker.reloadAllComponents()
            }
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            (action : UIAlertAction!) -> Void in })
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func storeCategory(_ category:String){
        UserDefaults.standard.set(category, forKey: "CAT_\(category.trimmingCharacters(in: .whitespacesAndNewlines))")
    }
    
    func getStoredCategories(){
        for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
            if key.contains("CAT_"){
                let category = value as! String
                if !categories.contains(category){
                    categories.append(category)
                }
            }
        }
    }
    
}

protocol CategoryDelegate {
    func CategorySelected(_ category:String)
}
