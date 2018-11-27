//
//  POIAnnotation.swift
//  CampusMap
//
//  Created by Chun on 2018/11/27.
//  Copyright © 2018 Nemoworks. All rights reserved.
//

import UIKit
import MapKit

enum POIType: Int {
    case misc = 0
    case ride
    case food
    case firstAid
    case schoolBuilding
    case moutain
    case supermarket
    case library
    
    func image() -> UIImage {
        switch self {
        case .misc:
            return #imageLiteral(resourceName: "star")
        case .ride:
            return #imageLiteral(resourceName: "ride")
        case .food:
            return #imageLiteral(resourceName: "food")
        case .firstAid:
            return #imageLiteral(resourceName: "firstaid")
        case .schoolBuilding:
            return #imageLiteral(resourceName: "school-building")
        case .moutain:
            return #imageLiteral(resourceName: "moutain")
        case .supermarket:
            return #imageLiteral(resourceName: "supermarket")
        case .library:
            return #imageLiteral(resourceName: "library")
        }
    }
}

class POIAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var type: POIType
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String, type: POIType) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.type = type
    }
}
