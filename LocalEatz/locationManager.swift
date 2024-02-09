//
//  locationManager.swift
//  MyImages
//
//  Created by Dewashish Dubey on 07/02/24.
//

import Foundation
import MapKit

@MainActor
class locationManager : NSObject, ObservableObject
{
    @Published var location : CLLocation?
    @Published var region = MKCoordinateRegion()
    
    private let LocationManager = CLLocationManager()
    override init()
    {
        super.init()
        LocationManager.desiredAccuracy = kCLLocationAccuracyBest
        LocationManager.distanceFilter = kCLDistanceFilterNone
        LocationManager.requestAlwaysAuthorization()
        LocationManager.startUpdatingLocation()
        LocationManager.delegate = self
        
    }
}

extension locationManager: CLLocationManagerDelegate
{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        self.location = location
        self.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}
