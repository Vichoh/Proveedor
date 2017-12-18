//
//  MapaViewController.swift
//  Proveedor
//
//  Created by Adrian Herrera on 09-11-17.
//  Copyright © 2017 Adrian Herrera. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class MapaViewController: UIViewController {
    
    override func viewDidLoad() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -38.749026,-72.6172639 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -38.749026, longitude: -72.6172639, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude:-38.749026, longitude: -72.6172639)
        marker.title = "Ufro"
        marker.snippet = "Temuco"
        marker.map = mapView
    }
}
