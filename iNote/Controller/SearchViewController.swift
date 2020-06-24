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
    var index = 0
    var notes = [Note]()
    var searchedNotes = [Note]()
    var medias = [Media]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //searchTableView.register(SearchNoteTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        searchTableView.delegate = self
        searchTableView.dataSource = self
        searchTableView.rowHeight = 140
        //searchTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0);
        
        notes = AppDelegate.shared().notes
        medias = AppDelegate.shared().medias
        
        searchedNotes = notes
        
        searchTextField.becomeFirstResponder()
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchToNote"{
            let createNoteViewController = segue.destination as! CreateNoteViewController
            var imagesData = [ImageData]()
            var audioData:AudioData?
            
            for m in AppDelegate.shared().medias {
                if m.noteId == searchedNotes[index].id && m.type == "IMAGE" {
                    imagesData.append(
                        ImageData(mediaId:m.id,
                                  image: Common.convertBase64ToImage(m.media),
                                  imageString:m.media)
                    )
                }else if m.noteId == searchedNotes[index].id && m.type == "AUDIO" {
                    audioData = AudioData(mediaId: m.id, audioString: m.media)
                }
            }
            
            createNoteViewController.editNote = searchedNotes[index]
            createNoteViewController.imagesData = imagesData
            createNoteViewController.audioData = audioData
            createNoteViewController.editingNote = true
        }
    }
}


extension SearchViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedNotes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as!  SearchNoteTableViewCell
        
        cell.titleLabel.text = searchedNotes[indexPath.row].title
        cell.noteLabel.text = searchedNotes[indexPath.row].note
        cell.dateLabel.text =  "\(searchedNotes[indexPath.row].noteDate) \(searchedNotes[indexPath.row].noteTime)"
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor(named:"DarkBlue")?.cgColor
        cell.layer.cornerRadius = 15
        //cell.layer.inset = nil
        //cell.separatorInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0);
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 10
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        index = indexPath.row
        performSegue(withIdentifier: "searchToNote", sender: self)
//        var imagesData = [ImageData]()
//        var audioData:AudioData?
//
//        for m in AppDelegate.shared().medias {
//            if m.noteId == notes[indexPath.row].id && m.type == "IMAGE" {
//                imagesData.append(
//                    ImageData(mediaId:m.id,
//                              image: Common.convertBase64ToImage(m.media),
//                              imageString:m.media)
//                )
//            }else if m.noteId == note.id && m.type == "AUDIO" {
//                audioData = AudioData(mediaId: m.id, audioString: m.media)
//            }
//        }
//
//        createNoteViewController.editNote = note
//        createNoteViewController.imagesData = imagesData
//        createNoteViewController.audioData = audioData
//        createNoteViewController.editingNote = true
    }

}


