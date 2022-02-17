//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct ContentView: View {
    
    let screenWidth  = UIScreen.main.bounds.size.width
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    
                    MapView()
                        .frame(height: screenWidth)
                    
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [.blue, .white, .green]), startPoint: .top, endPoint: .bottom)
                            .frame(height:50)
                            .opacity(0.35)
                        HStack {
                            Image(systemName: "figure.walk")
                            Text("Upcoming Walk & Rolls")
                                .font(.title)
                                .fontWeight(.medium)
                            Image(systemName: "figure.roll")
                        }
                    }
                    
                    List {
                        NavigationLink(destination: JoinAWalkAndRoll()) {
                            HStack {
                                Text("Boston-Edison AM Crew")
                                    .font(.title2)
                                Spacer()
                                Text("0.2 m")
                                    .fontWeight(.light)
                            }
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("Sacred Heart Track")
                                    .font(.title2)
                                Spacer()
                                Text("0.5 m")
                                    .fontWeight(.light)
                            }
                        }
                        
                    }
                    .onAppear(perform: {
                            UITableView.appearance().contentInset.top = -15
                        })
                    
                    
                }
                
                .navigationBarTitleDisplayMode(.inline)
                .opacity(0.90)
                .edgesIgnoringSafeArea(.bottom)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        
                        HStack {
                            NavigationLink (destination: MySettings()) {
                                Image(systemName: "gearshape.fill")
                                    .font(.title3)
                            }
                            
                            Spacer()
                            
                            Text ("Welcome, Otis!")
                                .font(.largeTitle)
                            
                            Spacer()
                            
                            NavigationLink (destination: PlanAWalkAndRoll()) {
                                Image(systemName: "plus")
                                    .font(.title3)
                            }
                            
                        }
                        
                    }
//                    ToolbarItem(placement: .navigationBarLeading) {
//                        NavigationLink(destination: MySettings()) {
//                            Text ("My Settings")
//                        }
//                    }
//                    ToolbarItem(placement: .navigationBarTrailing) {
//                        NavigationLink(destination: MySettings()) {
//                            Text ("Plan a Walk & Roll")
//                        }
//                    }
                }
            }
            //            Text("Today is a great day to get outside! ⛅️")
            //                .italic()
            //                .fontWeight(.light)
            //                .font(.title3)
            //                .padding(.top)
            //                .multilineTextAlignment(.leading)
            
            //            ShortProgressView()
            
            //            ActivityFeedView()
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        ContentView()
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
