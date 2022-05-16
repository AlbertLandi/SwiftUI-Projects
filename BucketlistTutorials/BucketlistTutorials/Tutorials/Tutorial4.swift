//
//  Tutorial4.swift
//  BucketlistTutorials
//
//  Created by Alberto Landi Cortiñas on 5/15/22.
//

import SwiftUI
import MapKit

struct Locale: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct Tutorial4: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.505562, longitude: -66.914667), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
    Locale(name: "Las Mercedes", coordinate: CLLocationCoordinate2D(latitude: 10.481940, longitude: -66.861530)),
    Locale(name: "Prados Del Este", coordinate: CLLocationCoordinate2D(latitude: 10.449077, longitude: -66.882652)),
    Locale(name: "El Hatillo", coordinate: CLLocationCoordinate2D(latitude: 10.424487, longitude: -66.826082))]
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Text(location.name)
                    } label: {
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                    }
                }
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
        .navigationBarTitle("Caracas Explorer")
    }
}

struct Tutorial4_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial4()
    }
}
