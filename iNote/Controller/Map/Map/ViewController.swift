//
//  ViewController.swift
//  Map
//
//  Created by Jose Smith Marmolejos on 2020-06-17.
//  Copyright © 2020 Jose Smith Marmolejos. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, UIGestureRecognizerDelegate,MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var textView: UITextView!
    var annotationsConfig = [ AnnotationConfig(title: "A", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                              AnnotationConfig(title: "B", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                              AnnotationConfig(title: "C", color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
                              AnnotationConfig(title: "D", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
                              AnnotationConfig(title: "E", color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
    ]
    var index = 0
    var showTotal = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let loc = CLLocationCoordinate2DMake(43.6425662,-79.3892455)
        let span = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
        let reg = MKCoordinateRegion(center:loc, span:span)
        mapView.region = reg
        
        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(tap))
        gestureTap.delegate = self
        
        let gestureDoubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTap))
        gestureDoubleTap.numberOfTapsRequired = 2
        gestureDoubleTap.delegate = self

        mapView.delegate = self
        mapView.addGestureRecognizer(gestureTap)
        mapView.addGestureRecognizer(gestureDoubleTap)
        
    }
    
    @objc func doubleTap(gestureRecognizer: UILongPressGestureRecognizer){
        //Restarting map
        mapView.removeAnnotations(mapView.annotations)
        mapView.removeOverlays(mapView.overlays)
        index = 0
        showTotal = false
    }
    
    @objc func tap(gestureRecognizer: UILongPressGestureRecognizer) {
        
        if index < 5{
            
            let location = gestureRecognizer.location(in: mapView)
            let coordinate = mapView.convert(location, toCoordinateFrom: mapView)
            
            
            // Add annotation:
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.subtitle = ""
            mapView.addAnnotation(annotation)
            
            //Adding coordinate
            annotationsConfig[index].coordinate = coordinate
            
            if index > 0{
                //Drawing line
                var points: [CLLocationCoordinate2D] = [CLLocationCoordinate2D]()
                points.append(coordinate)
                points.append(annotationsConfig[index - 1].coordinate!)
                
                if index == 4{
                    points.append(coordinate)
                    points.append(annotationsConfig[0].coordinate!)
                }
                
                //Getting distance
                let polyline = MKPolyline( coordinates: points, count: points.count)
                mapView.addOverlay(polyline)
                
                let c1 = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
                let c2 = CLLocation(latitude: annotationsConfig[index - 1].coordinate!.latitude, longitude: annotationsConfig[index - 1].coordinate!.longitude)
                
                annotationsConfig[index].distance = c1.distance(from: c2)
                print("Distance \(annotationsConfig[index].distance!)")
                
                if index == 4{
                    let c3 = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
                    let c4 = CLLocation(latitude: annotationsConfig[0].coordinate!.latitude, longitude: annotationsConfig[0].coordinate!.longitude)
                    annotationsConfig[0].distance = c3.distance(from: c4)
                    print("Distance \(annotationsConfig[0].distance!)")
                }
                
                //Adding Text
                var textDistance = String(round((annotationsConfig[index].distance! / 1000) * 100) / 100)
                var text = "Distance: \(annotationsConfig[index - 1].title) ->\(annotationsConfig[index].title): \(textDistance) KM"
                let distanceAnnotation = MKPointAnnotation()
                distanceAnnotation.coordinate = getMidPoint(annotationsConfig[index - 1].coordinate!, annotationsConfig[index].coordinate!)
                distanceAnnotation.subtitle = text
                mapView.addAnnotation(distanceAnnotation)
                
                if index == 4{
                    textDistance = String(round((annotationsConfig[index].distance! / 1000) * 100) / 100)
                    text = "Distance: \(annotationsConfig[index - 1].title) ->\(annotationsConfig[index].title): \(textDistance) KM"
                    let distanceAnnotation2 = MKPointAnnotation()
                    distanceAnnotation2.coordinate = getMidPoint(annotationsConfig[index].coordinate!, annotationsConfig[0].coordinate!)
                    distanceAnnotation2.subtitle = text
                    mapView.addAnnotation(distanceAnnotation2)
                }
            }
            
            print(coordinate)
            
            
        }else if index == 5{
            showTotal = true
            let totalAnnotation = MKPointAnnotation()
            totalAnnotation.coordinate = getMidPoint()
            totalAnnotation.subtitle = String(getTotal()) + "KM"
            mapView.addAnnotation(totalAnnotation)
        }
    }
    
    func getMidPoint() -> CLLocationCoordinate2D{
//        let midPointLat = (annotationsConfig[2].coordinate!.latitude + annotationsConfig[0].coordinate!.latitude) / 2
//        let midPointLon = (annotationsConfig[2].coordinate!.longitude + annotationsConfig[0].coordinate!.longitude) / 2
        
        let midPointLat = (annotationsConfig[0].coordinate!.latitude
            + annotationsConfig[1].coordinate!.latitude
            + annotationsConfig[2].coordinate!.latitude
            +  annotationsConfig[3].coordinate!.latitude
            +  annotationsConfig[4].coordinate!.latitude) / 5
        
        let midPointLon = (annotationsConfig[0].coordinate!.longitude
            + annotationsConfig[1].coordinate!.longitude
            + annotationsConfig[2].coordinate!.longitude
            + annotationsConfig[3].coordinate!.longitude
            + annotationsConfig[4].coordinate!.longitude) / 5
        
        let midLocation = CLLocationCoordinate2D(latitude: midPointLat, longitude: midPointLon)
        print("Mid: \(midLocation)")
        return midLocation
    }
    
    func getMidPoint(_ coordinate1:CLLocationCoordinate2D, _ coordinate2:CLLocationCoordinate2D) -> CLLocationCoordinate2D{
        let midPointLat = (coordinate2.latitude + coordinate1.latitude) / 2
        let midPointLon = (coordinate1.longitude + coordinate2.longitude) / 2
        let midLocation = CLLocationCoordinate2D(latitude: midPointLat, longitude: midPointLon)
        print("Mid: \(midLocation)")
        return midLocation
    }
    
    func getTotal() -> Double{
        var total:Double = 0.0
        for a in annotationsConfig {
            total = total + a.distance!
            print("total \(total)")
        }
        
        return round(total / 1000 * 100) / 100
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        print("Annotations")

            let id = MKMapViewDefaultAnnotationViewReuseIdentifier
            
            if let v = mapView.dequeueReusableAnnotationView(
                withIdentifier: id, for: annotation) as? MKMarkerAnnotationView {
                
                v.titleVisibility = .visible
                v.subtitleVisibility = .visible
                
                let subtitle = annotation.subtitle ?? ""
                
                if (showTotal){
                    let image = #imageLiteral(resourceName: "new_loc")
                    let resizedSize = CGSize(width: 100, height: 100)
                    UIGraphicsBeginImageContext(resizedSize)
                    image.draw(in: CGRect(origin: .zero, size: resizedSize))
                    let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
                    UIGraphicsEndImageContext()
                    v.glyphText = ""
                    v.glyphTintColor = UIColor.clear
                    v.markerTintColor = UIColor.clear
                    v.image = resizedImage
                    showTotal = false

                }else if(subtitle!.contains("Distance")){
                    //v.gly = nil
                    v.glyphText = ""
                    v.glyphTintColor = UIColor.clear
                    v.markerTintColor = UIColor.clear
                }else{
                    print(index)
                    v.markerTintColor = annotationsConfig[index].color
                    v.glyphText = annotationsConfig[index].title
                    v.glyphTintColor = .black
                    v.sizeThatFits(CGSize(width: 100, height: 100))
                    index += 1
                    
                }
                
                return v
                
        }
        
        return nil
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKPolyline {
            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.lightGray
            polylineRenderer.lineWidth = 5
            return polylineRenderer
        }
        return overlay as! MKOverlayRenderer
    }
    
}


struct AnnotationConfig {
    var title:String
    var color:UIColor
    var coordinate:CLLocationCoordinate2D? = nil
    var distance:CLLocationDistance? = nil
}



