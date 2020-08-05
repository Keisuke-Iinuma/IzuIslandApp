//
//  ViewController.swift
//  IzuIslandApp
//
//  Created by 飯沼圭哉 on 2020/08/03.
//  Copyright © 2020 keisuke.iinuma. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let filter = MKPointOfInterestFilter.excludingAll
        //MapView.pointOfInterestFilter = filter
        
        let center = CLLocationCoordinate2DMake(34.751935,139.352506)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.010 , longitudeDelta: 0.010)
        
        let region = MKCoordinateRegion(center: center , span: span)
        MapView.setRegion(region, animated:true)
    }


}

