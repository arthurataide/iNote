//
//  SearchViewController.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-16.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var searchTableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    var cellIdentifier = "cell"
    
    var notes = [Note]()
    var searchedNotes = [Note]()
    var medias = [Media]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //searchTableView.register(SearchNoteTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        searchTableView.delegate = self
        searchTableView.dataSource = self
        searchTableView.rowHeight = 140
        
        notes = AppDelegate.shared().notes
        medias = AppDelegate.shared().medias
        
        searchedNotes = notes
        
        //print(notes)
        //print(searchTableView.rowHeight)

    }
    
    
    @IBAction func searchEditingText(_ sender: UITextField) {
        
        if let text = sender.text{
            
            if text != ""{
                searchedNotes = [Note]()
                
                for note in notes{
                    if note.title.uppercased().contains(text.uppercased()) || note.note.uppercased().contains(text.uppercased()){
                        searchedNotes.append(note)
                    }
                }
                
            }else{
                searchedNotes = notes
            }
            searchTableView.reloadData()
        }
        
    }
}


extension SearchViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedNotes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as!  SearchNoteTableViewCell
        
        //cell.layer.borderWidth = 1
        cell.titleLabel.text = searchedNotes[indexPath.row].title
        cell.noteTextView.text = searchedNotes[indexPath.row].note
        cell.dateLabel.text =  "\(searchedNotes[indexPath.row].noteDate) \(searchedNotes[indexPath.row].noteTime)"
        //cell.imageView?.image = #imageLiteral(resourceName: "Welcome background")
//        cell.imageView?.layer.cornerRadius = 15
//        cell.imageView?.clipsToBounds = true
//        cell.clipsToBounds = true
        return cell
    }

}


