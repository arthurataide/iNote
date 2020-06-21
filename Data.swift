//
//  Data.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-21.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit

class Data {
    
    private var category: [String] = []
    
    static let shared = Data()
    
    var notes: [NotesCollection] = []
    
    private var data: [Note] = [
        Note.init(id: "1", title: "The first Note test", note: "Today I'm testing this data", category: "School", noteDate: "2020-06-18", noteTime: "11:24:16", location: "37.785834,-122.406417", user: "jsmr"),
        Note.init(id: "2", title: "The Second Note test", note: "Today I'm testing this data", category: "School", noteDate: "2020-06-18", noteTime: "11:24:16", location: "37.785834,-122.406417", user: "jsmr"),
        Note.init(id: "3", title: "The Third Note test", note: "Today I'm testing this data", category: "IOS", noteDate: "2020-06-18", noteTime: "11:24:16", location: "37.785834,-122.406417", user: "jsmr"),
        Note.init(id: "4", title: "The Fouth Note test", note: "Today I'm testing this data", category: "Android Class", noteDate: "2020-06-18", noteTime: "11:24:16", location: "37.785834,-122.406417", user: "jsmr"),
        Note.init(id: "5", title: "Other Note test", note: "Today I'm testing this data", category: "Android Class", noteDate: "2020-06-18", noteTime: "11:24:16", location: "37.785834,-122.406417", user: "jsmr"),
        Note.init(id: "6", title: "Another Note test", note: "Today I'm testing this data", category: "College", noteDate: "2020-06-18", noteTime: "11:24:16", location: "37.785834,-122.406417", user: "jsmr")
    ]

    private init() {
        getCategories()
        for i in data {
            if let index = checkTitleEqual(title: i.category){
                notes[index].notes.append(i)
            } else {
                fatalError("Something went wrong when creating NotesCollection")
            }
        }
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
        var n: NotesCollection = NotesCollection.init(title: "", notes: [])
        for d in data {
            if !categoryEqual(cat: d.category){
                category.append(d.category)
                n.title = d.category
                n.notes = []
                notes.append(n)
            }
        }
    }
    
}

