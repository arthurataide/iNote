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

class NoteViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<NotesCollection, Note>!
    private let notesCollections = Data.shared.notes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setupView()
    }
    private func setupView(){
        self.title = "Notes Library"
        print(notesCollections)
        collectionView.register(TitleSupplementaryView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TitleSupplementaryView.reuseIdentifier)
        collectionView.collectionViewLayout = configureCollectionViewLayout()
        configureDataSource()
        configureSnapshot()
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
    typealias TutorialDataSource = UICollectionViewDiffableDataSource<NotesCollection, Note>

    func configureDataSource() {
        dataSource = TutorialDataSource(collectionView: collectionView) { (collectionView: UICollectionView, indexPath: IndexPath, notes: Note) -> UICollectionViewCell? in

            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NoteCell.reuseIdentifier, for: indexPath) as? NoteCell else {
                return nil
            }

            cell.titleLabel.text = notes.title
            cell.imageView.image = #imageLiteral(resourceName: "Welcome background")

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

        dataSource.apply(currentSnapshot, animatingDifferences: false)
    }
}

// MARK: - UICollectionViewDelegate -

//extension NoteViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if let note = dataSource.itemIdentifier(for: indexPath),
//            let tutorialDetailController = storyboard?.instantiateViewController(identifier: TutorialDetailViewController.identifier, creator: { coder in return TutorialDetailViewController(coder: coder, tutorial: tutorial)
//            })   {
//            show(tutorialDetailController, sender:nil)
//        }
//
//    }
//}

