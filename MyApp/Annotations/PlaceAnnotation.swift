//
//  PlaceAnnotation.swift
//  MyApp
//
//  Created by SAHIL AMRUT AGASHE on 13/12/23.
//

import MapKit

// MARK: - PlaceAnnotation
class PlaceAnnotation: MKPointAnnotation {
    let mapItem: MKMapItem
    let id = UUID()
    var isSelected = false
    
    init(mapItem: MKMapItem) {
        self.mapItem = mapItem
        super.init()
        self.coordinate = mapItem.placemark.coordinate
    }
    
    var name: String {
        mapItem.name ?? ""
    }
    
    var phone: String {
        return mapItem.phoneNumber ?? ""
    }
    
    var address: String {
        return "\(mapItem.placemark.subThoroughfare ?? "") \(mapItem.placemark.thoroughfare ?? "") \(mapItem.placemark.locality ?? "") \(mapItem.placemark.countryCode ?? "")"
    }
    
    var location: CLLocation {
        mapItem.placemark.location ?? CLLocation.default
    }
}

// MARK: - My MKPointAnnotations
func getMKPointAnnotation(latitude: CLLocationDegrees, longitude: CLLocationDegrees) -> MKPointAnnotation {
    let pointAnnotation = MKPointAnnotation()
    pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    return pointAnnotation
}

let Bhandara = getMKPointAnnotation(latitude: 21.170000, longitude: 79.650002)
let Tumsar = getMKPointAnnotation(latitude: 21.37420654296875, longitude: 79.73873325096474)
let Nagpur = getMKPointAnnotation(latitude: 21.146633, longitude: 79.088860)
let Gondia = getMKPointAnnotation(latitude: 21.4624491, longitude: 80.22097729999996)
let Wardha = getMKPointAnnotation(latitude: 20.73542, longitude: 78.59488)
let Yavatmal = getMKPointAnnotation(latitude: 20.388794, longitude: 78.120407)
let Chandrapur = getMKPointAnnotation(latitude: 19.970324, longitude: 79.303360)
let Nanded = getMKPointAnnotation(latitude: 19.169815, longitude: 77.319717)
let Indore = getMKPointAnnotation(latitude: 22.719568, longitude: 75.857727)
let Aurangabad = getMKPointAnnotation(latitude: 19.901054, longitude: 75.352478)
let Hyderabad = getMKPointAnnotation(latitude: 17.387140, longitude: 78.491684)
