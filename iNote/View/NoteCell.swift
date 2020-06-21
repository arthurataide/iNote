//
//  NoteCell.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-20.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit

class NoteCell: UICollectionViewCell {
    static let reuseIdentifier = String(describing: NoteCell.self)
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
}
