//
//  MapViewController.swift
//  BubbleTea
//
//  Created by Olivia Crepin on 23/02/2021.
//  Copyright © 2021 Olivia Crepin. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        
        mapView.showsUserLocation = true
        
        // Do any additional setup after loading the view.
        let center = CLLocationCoordinate2D(latitude: 45.1899595, longitude: 5.728676)
        centerMap(onLocation: center)
        
        let teashop1 = CustomAnnotation()
        teashop1.id = "id-1"
        teashop1.coordinate = CLLocationCoordinate2D(latitude: 45.1899595, longitude: 5.7279885)
        teashop1.title = "Bubble Boom"
        mapView.addAnnotation(teashop1)
        
        let teashop2 = CustomAnnotation()
        teashop2.id = "id-2"
        teashop2.coordinate = CLLocationCoordinate2D(latitude: 45.190083, longitude: 5.726763)
        teashop2.title = "Flavor Tea"
        mapView.addAnnotation(teashop2)
        
        let teashop3 = CustomAnnotation()
        teashop3.id = "id-3"
        teashop3.coordinate = CLLocationCoordinate2D(latitude: 45.191894, longitude: 5.728676)
        teashop3.title = "Tea & Sushi Grenoble"
        mapView.addAnnotation(teashop3)
        
        let teashop4 = CustomAnnotation()
        teashop4.id = "id-4"
        teashop4.coordinate = CLLocationCoordinate2D(latitude: 45.192143, longitude: 5.728998)
        teashop4.title = "Tea and Bubbles"
        mapView.addAnnotation(teashop4)
        
        let teashop5 = CustomAnnotation()
        teashop5.id = "id-5"
        teashop5.coordinate = CLLocationCoordinate2D(latitude: 45.192966, longitude: 5.730783)
        teashop5.title = "Coffee & Go"
        mapView.addAnnotation(teashop5)
        
    }
    
    func centerMap(onLocation location: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region,animated: true)
    }

}
