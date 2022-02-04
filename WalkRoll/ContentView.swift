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
                VStack {
                    ShortProgressView()
                    List {
                        NavigationLink(destination: JoinAWalkAndRoll()) {
                            Text("Join a Walk & Roll")
                                .font(.headline)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            Text("Plan a Walk & Roll")
                                .font(.headline)
                        }
                        NavigationLink(destination: WalkAndRollPartners()) {
                            Text("Walk & Roll Partners")
                                .font(.headline)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            Text("Walk & Roll Groups")
                                .font(.headline)
                        }
                        NavigationLink(destination: ContactUs()) {
                            Text("Contact Us")
                                .font(.headline)
                        }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .accessibilityMedium)
        
    }
}
