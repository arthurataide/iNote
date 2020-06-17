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
    //@State var todoSubscription: AnyCancellable?
    var username:String?
    
    let notes:[Note] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Notes"
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "newNoteSegue", sender: self)
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
