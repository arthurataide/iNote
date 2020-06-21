//
//  CreateNoteViewController.swift
//  iNote
//
//  Created by Jose Smith Marmolejos on 2020-06-15.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import SwiftUI
import Amplify
import AmplifyPlugins
import Combine
import CoreLocation
import MobileCoreServices
import AVFoundation
import MediaPlayer

struct ImageData {
    var image:UIImage
    var imageString:String
}

final class CreateNoteViewController: UIViewController, UINavigationControllerDelegate{
    static let identifier = String(describing: CreateNoteViewController.self)
    var note: Note?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var noteTextField: UITextView!
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var tabBar: UITabBar!
    @State var noteSubscription: AnyCancellable?

    let notePlaceholder = "Type your note"
    let reuseIdentifier = "CellIdentifer"
    var recordButton: UIButton!
    var recordingSession: AVAudioSession!
    var audioRecorder: AVAudioRecorder!
    
    let locationManager = CLLocationManager()
    var mapLocation = CLLocation()
    var locationString:String?
    var username:String?
    var images = [String]()
    
    var imageData = [ImageData]()
    
    fileprivate var colView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CustomCell.self, forCellWithReuseIdentifier: "CellIdentifer")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextField.text = notePlaceholder
        noteTextField.textColor = UIColor.lightGray
        noteTextField.delegate = self
        
        titleTextField.becomeFirstResponder()
        
        tabBar.delegate = self
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.1331507564, green: 0.2934899926, blue: 0.3668411672, alpha: 1)
        //data that comes from the UICollectionView
        //print(note)
        //Cleaning shared variable
        AppDelegate.shared().category = ""
        
        //Getting username
        username = UserDefaults.standard.string(forKey: "username")
        print("User: ")
        print(UserDefaults.standard.string(forKey: "username") ?? "")
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        view.addSubview(colView)
        colView.backgroundColor = .white
        colView.topAnchor.constraint(equalTo: noteTextField.bottomAnchor, constant: 0).isActive = true
        colView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        colView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        colView.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: 0).isActive = true
        colView.heightAnchor.constraint(equalTo: colView.widthAnchor, multiplier: 0.5).isActive = true
        
        colView.delegate = self
        colView.dataSource = self
        
//        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//
//        collectionView.delegate = self
//        collectionView.dataSource = self
        //collectionView.reloadData()
        //Setting up CollectionView

        
        // Do any additional setup after loading the view.
        
//        recordingSession = AVAudioSession.sharedInstance()
//
//        do {
//            try recordingSession.setCategory(.playAndRecord, mode: .default)
//            try recordingSession.setActive(true)
//            recordingSession.requestRecordPermission() { [unowned self] allowed in
//                DispatchQueue.main.async {
//                    if allowed {
//                        self.loadRecordingUI()
//                    } else {
//                        // failed to record!
//                    }
//                }
//            }
//        } catch {
//            print("Error ")
//        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowMapView"{
            if let MVC = segue.destination as? MapViewController{
                MVC.location = mapLocation
            }
            
        }
    }
    
    func loadRecordingUI() {
        recordButton = UIButton(frame: CGRect(x: 64, y: 64, width: 128, height: 64))
        recordButton.setTitle("Tap to Record", for: .normal)
        recordButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        recordButton.addTarget(self, action: #selector(recordTapped), for: .touchUpInside)
        view.addSubview(recordButton)
    }
    
    func startRecording() {
        let audioFilename = getDocumentsDirectory().appendingPathComponent("recording.m4a")

        let settings = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 12000,
            AVNumberOfChannelsKey: 1,
            AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
        ]

        do {
            audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
            audioRecorder.delegate = self
            audioRecorder.record()

            recordButton.setTitle("Tap to Stop", for: .normal)
        } catch {
            finishRecording(success: false)
        }
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear: \(AppDelegate.shared().category)")
        var title:NSAttributedString?
        
        if (AppDelegate.shared().category == ""){
            title = NSAttributedString(string: "Category")
        }else{
            title = NSAttributedString(string: AppDelegate.shared().category)
        }
        categoryButton.setAttributedTitle(title, for: .normal)
    }
    
    
    func finishRecording(success: Bool) {
        audioRecorder.stop()
        audioRecorder = nil

        if success {
            recordButton.setTitle("Tap to Re-record", for: .normal)
        } else {
            recordButton.setTitle("Tap to Record", for: .normal)
            // recording failed :(
        }
    }
    
    @objc func recordTapped() {
        if audioRecorder == nil {
            startRecording()
        } else {
            finishRecording(success: true)
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @objc func showImages() {
        
    }
    
    @objc func saveNote() {
        print("Save")
        saveOnAWS()
    }
    
    @objc func deleteNote() {
        print("Delete")
    }
    
    func getDateTime(_ type:String)->String{
        //Getting current date and time
        let formatter = DateFormatter()
        let now = Date()
        
        if type == "DATE"{
            formatter.dateFormat = "yyyy-MM-dd"
        }else{
            formatter.dateFormat = "HH:mm:ss"
        }
        
        let dateString = formatter.string(from:now)
        print(dateString)
        
        return dateString
    }
    

    func saveOnAWS() {
        guard var title = titleTextField.text, let note = noteTextField.text else {
            return
        }
        
        var category = ""
        category = (AppDelegate.shared().category == "" ?  "No Category": AppDelegate.shared().category)
        
        if (title != "" || (note != "" && note != "Type your note")) {
            
            if (title == ""){
                title = "Untitled"
            }
            let note = Note(
                title: title,
                note: note,
                category: category,
                noteDate: getDateTime("DATE"),
                noteTime: getDateTime("TIME"),
                location: locationString ?? "",
                user: username ?? "")
            
            Amplify.DataStore.save(note) { (result) in
                switch(result) {
                case .success(let savedNote):
                    print("Saved item: \(savedNote)")
                    self.saveMedia(savedNote.id)
                    DispatchQueue.main.async {
                        self.clearFields()
                        self.showToast(message: "The note has been created.", font: .systemFont(ofSize: 12.0))
                    }
                case .failure(let error):
                    print("Could not save item to datastore: \(error)")
                }
                
            }
        }
        
    }
    
    func saveMedia(_ noteId:String){
        for img in imageData{
            let media = Media( noteId: noteId, type: "IMAGE", media: img.imageString)
            
            Amplify.DataStore.save(media) { (result) in
                switch(result) {
                case .success(let savedMedia):
                    print("Saved item: \(savedMedia)")
                    self.publish()
                case .failure(let error):
                    print("Could not save item to datastore: \(error)")
                }
                
            }
        }
    }
    
    func publish()  {
        print("Pushing")
        self.noteSubscription
            = Amplify.DataStore.publisher(for: Note.self)
                .sink(receiveCompletion: { completion in
                    print("Subscription has been completed: \(completion)")
                }, receiveValue: { mutationEvent in
                    print("Subscription got this value: \(mutationEvent)")
                })
        
    }
    
    func clearFields(){
        titleTextField.text = ""
        noteTextField.text = ""
        categoryButton.setAttributedTitle(NSAttributedString(string: "Category"), for: .normal)
        imageData = [ImageData]()
        colView.reloadData()
    }
    
    func showToast(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-300, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 8.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    func setNavigationItems() {
        let backButton = UIBarButtonItem()
        //let deleteButton = UIBarButtonItem()
        //backButton.image = UIImage(named: "back")
        backButton.title = "Save & Back"
        backButton.style = .plain
        backButton.action = #selector(saveNote)
        navigationItem.rightBarButtonItem = backButton
        
        //        deleteButton.image = UIImage(systemName: "trash")
        //        deleteButton.style = .plain
        //        deleteButton.action = #selector(deleteNote)
        //        navigationItem.rightBarButtonItem = deleteButton
        //
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Images", style: .plain, target: self, action: #selector(showImages))
    }
    
    func getPhoto() {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }
    
    @objc func deleteImage(sender: UISwipeGestureRecognizer){
        print("Delete")
        let cell = sender.view as! UICollectionViewCell
        let indexPath = colView.indexPath(for: cell)
        let myreact = cell.frame
        
        if let indexP = indexPath{
            
            UIView.animate(withDuration: 0.8, delay:0.0, options: .curveEaseInOut, animations: {
                cell.frame = CGRect(x: myreact.origin.x, y: myreact.origin.y-100, width: myreact.size.width, height: myreact.size.height)
                cell.alpha = 0.0
            },completion: { (finished: Bool) in
                print(indexP.row)
                self.imageData.remove(at: indexP.row)
                cell.frame = myreact
                self.colView.reloadData()
                
            })
            
        }
    }
}

extension CreateNoteViewController:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = notePlaceholder
            textView.textColor = UIColor.lightGray
        }
    }
}
extension CreateNoteViewController:UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if (item.tag == 1){
            getPhoto()
        }else if(item.tag == 2){
            print(item.tag)
        }else if(item.tag == 3){
            print(item.tag)
            performSegue(withIdentifier: "ShowMapView", sender: nil)
        }
        
    }
}

extension CreateNoteViewController: CLLocationManagerDelegate {
    
    @IBAction func locationPressed(_ sender: UIButton) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            mapLocation = location
            locationString = "\(lat),\(lon)"
            print("Location: \(locationString!)")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}

extension CreateNoteViewController:UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[.editedImage] as? UIImage else {
            print("No image found")
            return
        }
        
        imageData.append(ImageData(image: image, imageString: Common.convertImageToBase64(image)))
        colView.reloadData()
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}


extension CreateNoteViewController:AVAudioRecorderDelegate{
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if !flag {
            finishRecording(success: false)
        }
    }
}

extension CreateNoteViewController:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("KLK: \(indexPath.row)")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell
        
        let UpSwipe = UISwipeGestureRecognizer(target: self, action: #selector(deleteImage(sender:)))
        UpSwipe.direction = UISwipeGestureRecognizer.Direction.up
        cell.addGestureRecognizer(UpSwipe)
        
        //cell.clipsToBounds = true
        cell.data = imageData[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.height / 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("KLK")
        return imageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
//        let myreact = cell.frame
//        cell.frame = CGRect(x: cell.frame.origin.x+320, y: cell.frame.origin.y, width: cell.frame.size.width, height: cell.frame.size.height)
//
//        let value = Double(indexPath.row)*0.1
//        UIView.animate(withDuration: 0.8, delay:value, options: .curveEaseInOut, animations: {
//
//            cell.frame = CGRect(x: myreact.origin.x+100, y: myreact.origin.y, width: myreact.size.width, height: myreact.size.height)
//
//        }) { (finish) in
//
//            UIView.animate(withDuration: 0.8, animations: {
//                cell.frame = myreact
//            })
//        }
    }
}


class CustomCell: UICollectionViewCell{
    var data:ImageData?{
        didSet{
            guard let data = data else {
                return
            }
            
            imageView.image = data.image
        }
    }
    
    fileprivate let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "add_cat")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
