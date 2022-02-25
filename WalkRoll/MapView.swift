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
                    Image(systemName: "location.magnifyingglass")
                        .frame(width: 30, height: 30)
                        .offset(x: 2, y: 2)
                        .foregroundColor(.primary)
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
