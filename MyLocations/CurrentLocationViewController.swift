//
//  ViewController.swift
//  MyLocations
//
//  Created by Austin Sparks on 2/5/24.
//

import UIKit
import CoreLocation

class CurrentLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    // All needed outlets
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!
    
    let locationManager = CLLocationManager()
    var location: CLLocation?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action
    @IBAction func getLocation() {
        // asks permission for location
        let authStatus = locationManager.authorizationStatus
        if authStatus == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
            return
        }
        // return if location authorization is denied or restricted
        if authStatus == .denied || authStatus == .restricted {
            showLocationServicesDeniedAlert()
            return
        }
        locationManager.delegate = self
        locationManager.desiredAccuracy =
      kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
    }
    
    // MARK: - Helper Method
    func showLocationServicesDeniedAlert() {
        let alert = UIAlertController(
            title: "Location Services Disabled",
            message: "Please enable location services for this app in Settings.",
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - CLLocationManagerDelegate
    func locationManager(
       _ manager: CLLocationManager,
       didFailWithError error: Error
    ) {
        print("didFailWithError \(error.localizedDescription)")
    }
    
    func locationManager(
       _ manager: CLLocationManager,
       didUpdateLocations locations: [CLLocation]
    ) {
        let newLocation = locations.last!
        print("didUpdateLocations \(newLocation)")
    }


}

