//
//  ViewController.swift
//  AMANZI_FINAL
//
//  Created by Brennan Nugent on 4/21/17.
//  Copyright © 2017 Brennan Nugent. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
//MARK:- IBOutlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet var pressGesture: UILongPressGestureRecognizer!
    var pinSelection = PinSelection()
    let locationManager = CLLocationManager()
  
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
//MARK:- Showing the Map
      
    mapView.delegate = self
        
       self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()

        }
        
        
        
//MARK:- Segue
  

}
    
    
    
    @IBAction func mapPressed(_ sender: UILongPressGestureRecognizer) {
        if pressGesture.state == .ended {
            let point = pressGesture.location(in: self.mapView)
            let coordinate = self.mapView.convert(point, toCoordinateFrom: self.mapView)
            var annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = "Building"
            annotation.subtitle = "Floor"
            self.mapView.addAnnotation(annotation)
            
            
        performSegue(withIdentifier: "ToPinSelection", sender: sender)
        }
    }
}

