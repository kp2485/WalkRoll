//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct ContentView: View {
    
    let screenWidth  = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    @State private var walkRolls = WalkRoll.testData
    @State private var isPlanAWalkShowing = false
    @State private var isMySettingsShowing = false
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    
                    Spacer()
                        .frame(height: screenHeight * 0.005)
                    
                    MapView(walkRolls: walkRolls)
                        .frame(height: screenWidth)
                    
                    Text("Nearby Walk & Rolls")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .padding(.vertical, 1)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    List {
                        ForEach(walkRolls) { walkRoll in
                            NavigationLink(destination: DetailView(WalkRoll: walkRoll)) {
                                HStack {
                                    Text(walkRoll.name)
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
                        }
                        
                        
//                        HStack {
//                            Spacer()
//                            Text("See more...")
//                            Spacer()
//                        }
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
                            Button(action: {
                                isMySettingsShowing = true
                            }) {
                                Image(systemName: "gearshape.fill")
                                    .font(.title3)
                            }
                            
                            Spacer()
                            
                            Text ("Welcome, Otis!")
                                .font(.largeTitle)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .frame(maxHeight: .infinity)
                            
                            Spacer()
                            
                            Button(action: {
                                isPlanAWalkShowing = true
                            }) {
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
        .sheet(isPresented: $isPlanAWalkShowing) {
            PlanAWalkAndRoll(walkRolls: $walkRolls)
        }
        .sheet(isPresented: $isMySettingsShowing) {
            MySettings()
        }
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
