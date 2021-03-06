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

final class NoteViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var sortSegmentControl: UISegmentedControl!
    private var dataSource: UICollectionViewDiffableDataSource<NotesCollection, Note>!
    private var notesCollections = Data.shared.notes.sorted { $0.title < $1.title }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(editMode(_:)), name: Notification.Name(rawValue: "editMode"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(deleteItemCollection(_:)), name: Notification.Name(rawValue: "deleteItemCollection"), object: nil)
        setupView()
        
        print(UserDefaults.standard.data(forKey: "username"))
    }
    private func setupView(){
        collectionView.register(TitleSupplementaryView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TitleSupplementaryView.reuseIdentifier)
        collectionView.collectionViewLayout = configureCollectionViewLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        activityIndicator.startAnimating()
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
        sortSegmentControl.selectedSegmentIndex = UISegmentedControl.noSegment
        AppDelegate.shared().notes = Data.shared.data
        AppDelegate.shared().medias = Data.shared.medias
        print("viewWillDisappear")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        Data.shared.load()
        notesCollections = Data.shared.notes.sorted { $0.title < $1.title }
    
        configureDataSource()
        configureSnapshot()
        //sortSnapshot(typeSort: 1)
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
    }
    
    
    
    @objc func editMode(_ notification: Notification){
//        print("EditMode")
        let editing = AppDelegate.shared().edit
        let animated = AppDelegate.shared().anin
        super.setEditing(editing, animated: animated)
        
        collectionView.allowsMultipleSelection = true
        collectionView.indexPathsForSelectedItems?.forEach { indexPath in
          guard let cell = collectionView.cellForItem(at: indexPath) as? NoteCell else { return }
            if !isEditing {
                cell.isSelected = isEditing
            }
        }
    }
    
    @objc func deleteItemCollection(_ notification: Notification){
//        print("deleteButton Clicked")
        guard let selectedIndexPaths = collectionView.indexPathsForSelectedItems else {return}
        
        let notes = selectedIndexPaths.compactMap { dataSource.itemIdentifier(for: $0) }
        var currentSnapshot = dataSource.snapshot()
        currentSnapshot.deleteItems(notes)
        
        Data.shared.deleteAws(notes: notes)
        Data.shared.load()
        AppDelegate.shared().notes = Data.shared.data
        AppDelegate.shared().medias = Data.shared.medias
        dataSource.apply(currentSnapshot, animatingDifferences:  true)
    }
    @IBAction func sortSegmentControl(_ sender: UISegmentedControl) {
        sender.selectedSegmentTintColor = .white
        let value = sender.selectedSegmentIndex
        sortItens(sortId: value)
    }
}

//MARK: - Collection View -

extension NoteViewController {
    func configureCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnviroment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.6), heightDimension: .fractionalHeight(0.3))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            section.interGroupSpacing = 10
            
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topLeading)
            
            section.boundarySupplementaryItems = [sectionHeader]
            
            return section
        }
        
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
}

// MARK: - Diffable Data Source -

extension NoteViewController {
    typealias noteDataSource = UICollectionViewDiffableDataSource<NotesCollection, Note>
    
    func configureDataSource() {
        dataSource = noteDataSource(collectionView: collectionView) { (collectionView: UICollectionView, indexPath: IndexPath, notes: Note) -> UICollectionViewCell? in
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NoteCell.reuseIdentifier, for: indexPath) as? NoteCell else {
                return nil
            }
            
            var img = #imageLiteral(resourceName: "Welcome background")
            cell.titleLabel.text = notes.title
            
            //print("ColView: \(notes.title)")
            
            for m in Data.shared.medias {
                if m.noteId == notes.id && m.type == "IMAGE" {
                    img = Common.convertBase64ToImage(m.media)
                    break
                }
            }
            cell.imageView.image = img
            cell.layer.cornerRadius = 15
            cell.clipsToBounds = true
            return cell
        }
        
        dataSource.supplementaryViewProvider = { [weak self] (collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? in
            
            if let self = self, let titleSupplementaryView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TitleSupplementaryView.reuseIdentifier, for: indexPath) as? TitleSupplementaryView {
                
                let notesCollection = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
                titleSupplementaryView.textLabel.text = notesCollection.title
                
                return titleSupplementaryView
            } else {
                return nil
            }
        }
    }
    
    func configureSnapshot() {
        var currentSnapshot = NSDiffableDataSourceSnapshot<NotesCollection, Note>()

        notesCollections.forEach { collection in
            currentSnapshot.appendSections([collection])
            currentSnapshot.appendItems(collection.notes)
        }
        
        dataSource.apply(currentSnapshot, animatingDifferences: true)
    }
    
    func sortItens(sortId: Int) {
        //Data.shared.load()
       // notesCollections = Data.shared.sort(sortId: sortId)
        //Data.shared.sort(sortId: sortId)
        notesCollections = Data.shared.sort(sortId: sortId).sorted { $0.title < $1.title }
        print("New Note Collection: \(notesCollections)")
//        configureDataSource()
//        configureSnapshot()
        
        var currentSnapshot = dataSource.snapshot()
        currentSnapshot.deleteAllItems()

        notesCollections.forEach { collection in
            currentSnapshot.appendSections([collection])
            currentSnapshot.appendItems(collection.notes)
        }

        dataSource.apply(currentSnapshot, animatingDifferences: false)

    }

}

//MARK: - UICollectionViewDelegate -

extension NoteViewController: UICollectionViewDelegate {
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if isEditing && identifier == "EditNoteViewController" {
            return false
        } else {
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "EditNoteViewController",
            let noteCell = sender as? NoteCell,
            let createNoteViewController = segue.destination as? CreateNoteViewController,
            let indexPath = collectionView.indexPath(for: noteCell),
            let note = dataSource.itemIdentifier(for: indexPath) else {
                return
        }
        var imagesData = [ImageData]()
        var audioData:AudioData?
        
        for m in Data.shared.medias {
            if m.noteId == note.id && m.type == "IMAGE" {
                imagesData.append(
                    ImageData(mediaId:m.id,
                              image: Common.convertBase64ToImage(m.media),
                              imageString:m.media)
                )
            }else if m.noteId == note.id && m.type == "AUDIO" {
                audioData = AudioData(mediaId: m.id, audioString: m.media)
            }
        }
        
        createNoteViewController.editNote = note
        createNoteViewController.imagesData = imagesData
        createNoteViewController.audioData = audioData
        createNoteViewController.editingNote = true
    }
}



