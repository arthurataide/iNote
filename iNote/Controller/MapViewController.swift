//
//  MapViewController.swift
//  iNote
//
//  Created by Arthur Ataide on 2020-06-21.
//  Copyright © 2020 Arthur Ataide and Jose Marmolejos. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var location: CLLocation?
    override func viewDidLoad() {
        super.viewDidLoad()
        setLocation(location!.coordinate.latitude, location!.coordinate.longitude)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func setLocation(_ latitude: CLLocationDegrees,_ longitude: CLLocationDegrees ){
        let firstLocation = CLLocationCoordinate2DMake(latitude, longitude)
        let zoomArea = MKCoordinateRegion(center: firstLocation, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        let ann = MKPointAnnotation()
        ann.coordinate = CLLocation(latitude: latitude, longitude: longitude).coordinate
        ann.title = "Note Location"
        self.mapView.addAnnotation(ann)
        self.mapView.setRegion(zoomArea, animated: true)
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let id = MKMapViewDefaultAnnotationViewReuseIdentifier
        if let v = mapView.dequeueReusableAnnotationView(withIdentifier: id, for: annotation) as? MKMarkerAnnotationView {
            return v
        }
        return nil
    }

}
