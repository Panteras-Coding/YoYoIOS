//
//  LocationManager.swift
//  YoYo
//
//  Created by Brian Aranda on 26/08/20.
//  Copyright © 2020 Panteras UP Coding. All rights reserved.
//

import Combine
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {

    // Publish the user's location so subscribers can react to updates
    @Published var lastKnownLocation: CLLocation? = nil
    private let manager = CLLocationManager()

    override init() {
        super.init()
        self.manager.delegate = self
        self.manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            self.manager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Notify listeners that the user has a new location
        self.lastKnownLocation = locations.last
    }
}
