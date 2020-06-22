//
//  NotesCollection.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-21.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import Foundation

struct NotesCollection: Hashable {
  var title: String
  var notes: [Note]
  var media: [Media]
  let identifier = UUID().uuidString
    
    func hash(into hash: inout Hasher) {
        hash.combine(identifier)
    }
    
    static func ==(lhs: NotesCollection, rhs: NotesCollection) -> Bool {
        return lhs.title == rhs.title
    }
}
