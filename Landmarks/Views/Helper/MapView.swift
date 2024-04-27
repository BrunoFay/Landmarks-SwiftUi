//
//  MapView.swift
//  Landmarks
//
//  Created by bruno alves fay on 26/04/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
   private var region: MKCoordinateRegion {
        MKCoordinateRegion (
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: -25.094545, longitude: -50.163288))
}
