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
                    Text("Today is a great day to get outside!")
                        .italic()
                        .fontWeight(.light)
                        .font(.title3)
                        .padding(.top)
                    ShortProgressView()
                        .padding()
                    List {
                        NavigationLink(destination: JoinAWalkAndRoll()) {
                            Text("Join a Walk & Roll")
                                .font(.title2)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            Text("Plan a Walk & Roll")
                                .font(.title2)
                        }
                        NavigationLink(destination: WalkAndRollPartners()) {
                            Text("Walk & Roll Partners")
                                .font(.title2)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            Text("Walk & Roll Groups")
                                .font(.title2)
                        }
                        NavigationLink(destination: ContactUs()) {
                            Text("Contact Us")
                                .font(.title2)
                        }
                    }
                    .navigationTitle(Text("Welcome, Otis!"))
                    .opacity(0.90)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: MySettings()) {
                                Text ("My Settings")
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
            .environment(\.sizeCategory, .large)
        
    }
}
