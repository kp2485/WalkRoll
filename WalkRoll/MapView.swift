//
//  ContentView.swift
//  Walk&Roll
//
//  Created by Kyle Peterson on 1/31/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    @StateObject var viewModel = MapViewModel()
    var walkRolls: [WalkRoll]
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true, annotationItems: walkRolls) { annotation in
            MapAnnotation(coordinate: annotation.coordinate) {
                Circle()
                    .frame(width: 25, height: 25)
            }
        }
            .ignoresSafeArea()
            // dot color
            .accentColor(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocationServicesIsEnabled()
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(walkRolls: WalkRoll.testData)
    }
}
