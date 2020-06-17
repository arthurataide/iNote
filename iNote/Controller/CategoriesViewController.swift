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
    var categories = ["Gym","School","Recipe","Home"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesPicker.delegate = self

        // Do any additional setup after loading the view.
    }
    @IBAction func addNewTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
        AppDelegate.shared().category = categories[index]
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
    
}
