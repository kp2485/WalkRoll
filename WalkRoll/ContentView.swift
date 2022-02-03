//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationView {
                    List {
                        NavigationLink("Join a Walk & Roll", destination: MapView())
                    }
                    .navigationTitle("Welcome, Otis!")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("My Settings") {
                                print("test")
                            }
                        }
                    }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
