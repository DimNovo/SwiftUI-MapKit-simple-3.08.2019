//
//  LocationItem.swift
//  SwiftUI MapKit
//
//  Created by Dmitry Novosyolov on 03/08/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import Foundation
import MapKit

struct LocationItem {
    let title, imageURL: String
    let coordinates: CLLocationCoordinate2D
}

extension LocationItem {
    static func all() -> [LocationItem] {
        return [
            LocationItem(title: "Beer Sheva", imageURL: "Beer-Sheva",
                         coordinates: CLLocationCoordinate2D(
                            latitude: 31.25181,
                            longitude: 34.7913)),
            LocationItem(title: "Ness Ziona", imageURL: "Ness-Ziona",
                         coordinates: CLLocationCoordinate2D(
                            latitude: 31.92933,
                            longitude: 34.79868)),
            LocationItem(title: "Tel Aviv", imageURL: "Tel-Aviv",
                         coordinates: CLLocationCoordinate2D(
                            latitude: 32.083333,
                            longitude: 34.7999968))
        ]
    }
}
