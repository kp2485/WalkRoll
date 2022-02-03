//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                    List {
                        ShortProgressView()
                        NavigationLink("Join a Walk & Roll", destination: JoinAWalkAndRoll())
                        NavigationLink("Plan a Walk & Roll", destination: PlanAWalkAndRoll())
                        NavigationLink("Walk & Roll Partners", destination: WalkAndRollPartners())
                        NavigationLink("Walk & Roll Groups", destination: PlanAWalkAndRoll())
                        NavigationLink("Contact Us", destination: ContactUs())
                    }
                    .navigationTitle(Text("Welcome, Otis!"))
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("My Settings") {
                                MySettings()
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
