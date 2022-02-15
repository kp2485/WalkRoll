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
                    
                    List {
                        NavigationLink(destination: JoinAWalkAndRoll()) {
                            HStack {
                                Text("Join a Walk & Roll")
                                    .font(.title2)
                                Image(systemName: "figure.walk")
                            }
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("Plan a Walk & Roll")
                                    .font(.title2)
                                Image(systemName: "map")
                            }
                        }
                        NavigationLink(destination: WalkAndRollPartners()) {
                            HStack {
                                Text("Walk & Roll Partners")
                                    .font(.title2)
                                Image(systemName: "person.fill")
                            }
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("Walk & Roll Groups")
                                    .font(.title2)
                                Image(systemName: "person.3.fill")
                            }
                        }
                        NavigationLink(destination: ContactUs()) {
                            HStack {
                                Text("Contact Us")
                                    .font(.title2)
                                Image(systemName: "mail")
                            }
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
                    
                    ShortProgressView()
                        .padding(.bottom)
                    
                    ActivityFeedView()
                        
                    
                    
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        
    }
}
