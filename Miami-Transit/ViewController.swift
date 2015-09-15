//
//  ViewController.swift
//  Miami-Transit
//
//  Created by James Roth on 9/14/15.
//  Copyright (c) 2015 James Roth. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    // Linking MapView
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Setting Latitude/Longitude Coordinates and view
        let initialLocation = CLLocation(latitude: 25.778135, longitude: -80.179100)
        
        let regionRadius: CLLocationDistance = 6000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
    centerMapOnLocation(initialLocation)

    }

}

