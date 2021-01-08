//
//  ViewController.swift
//  GoogleMapTest
//
//  Created by Jeonggyu Park on 2021/01/08.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
                let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
                self.view.addSubview(mapView)
        mapView.delegate = self
        
        
        let marker = GMSMarker()
           marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
           marker.title = "Sydney"
           marker.snippet = "Australia"
           marker.map = mapView
    }
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
           print("infoWindowTapped")
       }

    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
           print("markerTapped")

           return true
       }



}

