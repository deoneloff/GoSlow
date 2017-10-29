//
//  SecondViewController.swift
//  GoSlow
//
//  Created by Deon Eloff on 10/29/17.
//  Copyright © 2017 Deon Eloff. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {
    
    let regionRadius: CLLocationDistance = 2000
    let almerePoort = [52.339200,5.142912]
    
    @IBOutlet weak var mapViewAdd: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: almerePoort[0], longitude: almerePoort[1])
        centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mapViewAdd.setRegion(coordinateRegion, animated: true)
    }
    
    
}
