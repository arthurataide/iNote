//
//  Data.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-21.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins

class Data {
    
    private var category: [String] = []
    static let shared = Data()
    var notes: [NotesCollection] = []
    
    
    var data = [Note]()
    var medias = [Media]()

    private init() {
        load()
    }
    
    func getNotes(){
        let username = UserDefaults.standard.string(forKey: "username")
        print("USER: \(username)")
        Amplify.DataStore.query(Note.self,
                                where: Note.keys.user.eq(username),
                                completion: { result in
                                    switch(result) {
                                    case .success(let notes):
                                        for note in notes{
                                            //if note.user == username{
                                                self.data.append(note)
                                                //print("MyNote: \(note.title)")
                                            getMedia(note.id)
                                            //}
                                            getCategories()
                                        }
                                        
                                    case .failure(let error):
                                        print("Could not query DataStore: \(error)")
                                    }
        })
    }
    
    func getMedia(_ noteId:String) {
        Amplify.DataStore.query(Media.self,
                                where: Media.keys.noteId.eq(noteId),
                                completion: { result in
                                    switch(result) {
                                    case .success(let medias):
                                        for media in medias{
                                            //print(media)
                                            self.medias.append(media)
                                        }
                                    case .failure(let error):
                                        print("Could not query DataStore: \(error)")
                                    }
        })

    }
    
    private func checkTitleEqual(title: String) -> Int? {
        for i in 0..<notes.count {
            if notes[i].title == title {
                return i
            }
        }
        return nil
    }
    
    private func categoryEqual(cat: String) -> Bool {
        for i in category{
            if i == cat{
                return true
            }
        }
        return false
    }
    
    private func getCategories() {
        var n: NotesCollection = NotesCollection.init(title: "", notes: [], media: [])
        for d in data {
            if !categoryEqual(cat: d.category){
                category.append(d.category)
                n.title = d.category
                n.notes = []
                notes.append(n)
            }
        }
        //let cat = category.sorted {$0 < $1}

    }
    
    func load() {
        category = [String]()
        data = [Note]()
        medias = [Media]()
        notes = [NotesCollection]()
        getNotes()
        for i in data {
            if let index = checkTitleEqual(title: i.category){
                notes[index].notes.append(i)
            } else {
                fatalError("Something went wrong when creating NotesCollection")
            }
        }
    }
    
    func deleteAws(notes: [Note]) {
        for dm in notes{
            print(dm)
            Amplify.DataStore.query(Note.self, where: Note.keys.id.eq(dm.id), completion: { result in
                switch(result) {
                case .success(let media):
                    guard media.count == 1, let toDeleteMedia = media.first else {return}
                        Amplify.DataStore.delete(toDeleteMedia, completion: { result in
                            switch(result) {
                            case .success:
                                self.publish()
                                //print("Deleted item: \(toDeleteMedia.id)")
                            case .failure(let error):
                                print("Could not update data in Datastore: \(error)")
                            }
                        })
                case .failure(let error):
                    print("Could not query DataStore: \(error)")
                }
            })
        }
    }
    func publish()  {
        //print("Pushing deletion")
            Amplify.DataStore.publisher(for: Note.self).sink(receiveCompletion: { completion in
                    print("Subscription has been completed: \(completion)")
                }, receiveValue: { mutationEvent in
                    print("Subscription got this value: \(mutationEvent)")
                })
        
    }
    
    func sort(sortId: Int) -> [NotesCollection]{
//
//        if sortId == 0 {
//            for var i in self.notes {
//                print("Category: \(i.title)")
//                print("Not sorted: \(i.notes)")
//                //var sortedNote = i.notes
//                i.notes = i.notes.sorted{ $0.title < $1.title }
//                print("Sorted: \(i.notes)")
//
//            }
//        }
        
        var notesSortedAlpha = [NotesCollection]()
        var curNote = NotesCollection(title: "", notes: [], media: [])

        if sortId == 0 {
            for i in self.notes {
                let a = i.notes.sorted{ $0.title < $1.title }
                curNote.title = i.title
                curNote.notes = a
                curNote.media = i.media
                notesSortedAlpha.append(curNote)
            }
       }else if sortId == 1 {
            for i in self.notes {
                let a = i.notes.sorted{ $0.title > $1.title }
                curNote.title = i.title
                curNote.notes = a
                curNote.media = i.media
                notesSortedAlpha.append(curNote)
            }
        } else if sortId == 2 {
            var noteDate: [DateConverter] = []
            var dateConverter = DateConverter()
            var dateTime = ""
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"// yyyy-MM-dd"
            for i in self.notes {
                for c in i.notes{
                    print("Here")
                    dateTime = "\(c.noteDate) \(c.noteTime)"
                    //print(dateTime)
                    let dat = dateFormatter.date(from: dateTime)
                    if let d = dat {
                        dateConverter.title = i.title
                        dateConverter.id = c.id
                        dateConverter.date = d
                    }
                    noteDate.append(dateConverter)
                }
            }
            
            //let noteSortedDate = noteDate.sorted { $0.date! > $1.date! }
            //let noteSortedTitle = noteSortedDate.sorted{ $0.title! < $1.title! }
            //print("DATE CONVERTER: \(noteSortedTitle)")
            print("Is it here?: \(self.notes)")
            let sortedArray = noteDate.sorted { (struct1, struct2) -> Bool in
                if (struct1.title! != struct2.title!) { // if it's not the same section sort by section
                    return struct1.title! < struct2.title!
                } else { // if it the same section sort by order.
                    return struct1.date! > struct2.date!
                }
            }
            print("DATE CONVERTER: \(sortedArray)")
            
            for sections in self.notes {
                print("Section: " + sections.title)
                curNote.title = sections.title
                curNote.media = sections.media
                for sor in sortedArray{
                    for not in sections.notes {
                        if sor.title == sections.title && sor.id == not.id{
                            curNote.notes.append(not)
                        }
                    }
                }
                notesSortedAlpha.append(curNote)
                curNote.notes = []
            }
            print("NEW ARRAY SORTED TIME: \(notesSortedAlpha)")
        

        } else {
            notesSortedAlpha = self.notes
        }
        
        notes.removeAll()
        for alpha in notesSortedAlpha{
            notes.append(alpha)
        }
        
        print("Before return: \(notes)")
        return notes
    }
}

