//
//  NoteViewController.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-11.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins
import Combine

class NoteViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    //@State var todoSubscription: AnyCancellable?
    @IBOutlet weak var collectionView: UICollectionView!
    //var username:String?
    
    let notes:[Note] = []
    let sections:[String] = ["School", "IOS", "Android"]
    
    let headerID = "LessonHeader"
    let cellID = "LessonCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        collectionView.delegate = self
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top:10, left:20, bottom:10, right:20)
        layout.headerReferenceSize = CGSize(width: 0,height: 40)
        layout.itemSize = CGSize(width: 70,height: 45)
        collectionView.register(UINib(nibName: self.cellID, bundle: nil), forCellWithReuseIdentifier: self.cellID)
        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,withReuseIdentifier: self.headerID)
        collectionView.backgroundColor = .white
        collectionView.contentInsetAdjustmentBehavior = .always
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell( withReuseIdentifier: self.cellID, for: indexPath)
        let lab = cell.viewWithTag(1) as! UILabel
        if lab.text == "Label" {
            lab.highlightedTextColor = .white
            cell.backgroundColor = .blue
            cell.layer.borderColor = UIColor.brown.cgColor
            cell.layer.borderWidth = 5
            cell.layer.cornerRadius = 5
        let v = UIView()
            v.backgroundColor = UIColor.blue.withAlphaComponent(0.8)
            cell.selectedBackgroundView = v
        }
        let term = self.sections[indexPath.section]
        //lab.text = notes.tirl + term.sectionFirstWord
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }
    
//    func subscribeTodos() {
//       self.todoSubscription
//           = Amplify.DataStore.publisher(for: NoteViewController.self)
//               .sink(receiveCompletion: { completion in
//                   print("Subscription has been completed: \(completion)")
//               }, receiveValue: { mutationEvent in
//                   print("Subscription got this value: \(mutationEvent)")
//               })
//    }
    

}
