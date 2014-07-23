//
//  ViewController.swift
//  beerly
//
//  Created by Home on 16.07.14.
//  Copyright (c) 2014 some-guys. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{
    @IBOutlet var MapView : MKMapView
    

                            
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var latitude:CLLocationDegrees = 9.44543
    var longitude:CLLocationDegrees  = 12.2345
    
    var latitudeDelta:CLLocationDegrees = 0.01
    var longitudeDelta:CLLocationDegrees = 0.01
    
    var span:MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
    var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
    var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
    
    self.MapView.setRegion(region, animated: true)


  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
    


}

