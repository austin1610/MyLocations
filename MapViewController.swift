//
//  MapViewController.swift
//  MyLocations
//
//  Created by Austin Sparks on 2/15/24.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    var locations = [Location]()
    
    var managedObjectContext: NSManagedObjectContext!
 
    // MARK: - Actions
    @IBAction func showUser() {
        let region = MKCoordinateRegion(
            center: mapView.userLocation.coordinate,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000)
        mapView.setRegion(
            mapView.regionThatFits(region),
            animated: true)
    }
    
    @IBAction func showLocations() {
    }
}

extension MapViewController: MKMapViewDelegate {
}
