//
//  ViewController.swift
//  LocationMap
//
//  Created by Jose Smith Marmolejos on 2020-06-16.
//  Copyright © 2020 Jose Smith Marmolejos. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController,CLLocationManagerDelegate {
    
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let newLocation = locations.last {
            let latitudeString = "\(newLocation.coordinate.latitude)"
            let longitudeString = "\(newLocation.coordinate.longitude)"
            myTextView.text = "Latitude: " + latitudeString + "\nLongitude: " + longitudeString
        }
        
    }
    


}

