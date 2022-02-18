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
                    
                    Text("Upcoming Walk & Rolls")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .padding(.vertical, 1)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    
                    List {
                        NavigationLink(destination: JoinAWalkAndRoll()) {
                            HStack {
                                Text("Boston-Edison AM Crew")
                                    .font(.title2)
                                    .layoutPriority(1)
                                    .lineLimit(2)
                                Spacer()
                                Text("0.2 m")
                                    .font(.body)
                                    .fontWeight(.light)
                                    .lineLimit(1)
                            }
                            .minimumScaleFactor(0.5)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("Sacred Heart Track")
                                    .font(.title2)
                                    .layoutPriority(1)
                                    .lineLimit(2)
                                Spacer()
                                Text("0.5 m")
                                    .font(.body)
                                    .fontWeight(.light)
                                    .lineLimit(1)
                            }
                            .minimumScaleFactor(0.5)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("Central HS Track")
                                    .font(.title2)
                                    .layoutPriority(1)
                                    .lineLimit(2)
                                Spacer()
                                Text("0.5 m")
                                    .font(.body)
                                    .fontWeight(.light)
                                    .lineLimit(1)
                            }
                            .minimumScaleFactor(0.5)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("West Side Walkers")
                                    .font(.title2)
                                    .layoutPriority(1)
                                    .lineLimit(2)
                                Spacer()
                                Text("2.2 m")
                                    .font(.body)
                                    .fontWeight(.light)
                                    .lineLimit(1)
                            }
                            .minimumScaleFactor(0.5)
                        }
                        NavigationLink(destination: PlanAWalkAndRoll()) {
                            HStack {
                                Text("Palmer Park")
                                    .font(.title2)
                                    .layoutPriority(1)
                                    .lineLimit(2)
                                Spacer()
                                Text("3.7 m")
                                    .font(.body)
                                    .fontWeight(.light)
                                    .lineLimit(1)
                            }
                            .minimumScaleFactor(0.5)
                        }
                        HStack {
                            Spacer()
                            Text("See more...")
                            Spacer()
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
                            
                            Text ("Welcome, Poindexter!")
                                .font(.largeTitle)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .frame(maxHeight: .infinity)
                            
                            Spacer()
                            
                            NavigationLink (destination: PlanAWalkAndRoll()) {
                                Image(systemName: "plus")
                                    .font(.title3)
                            }
                            
                        }
                        .background()
                        
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
            .environment(\.sizeCategory, .medium)
            
        ContentView()
        
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
