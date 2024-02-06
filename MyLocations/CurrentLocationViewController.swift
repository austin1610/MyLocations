//
//  ViewController.swift
//  MyLocations
//
//  Created by Austin Sparks on 2/5/24.
//

import UIKit

class CurrentLocationViewController: UIViewController {
    
    // All needed outlets
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Action
    @IBAction func getLocation() {
        
    }


}

