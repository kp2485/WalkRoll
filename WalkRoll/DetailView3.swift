//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct DetailView3: View {
    
    let screenWidth  = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                
                VStack {
                    
                    Spacer()
                        .frame(height: screenHeight * 0.005)
                    
                    MapView()
                        .frame(width: screenWidth, height: screenHeight * 0.50)
                    
                    Text("Central HS Track")
                        .font(.title)
                        .fontWeight(.medium)
//                        .padding(.horizontal)
                        .padding(.vertical, 1)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    
                    Text("1.7 miles away")
                        .padding(.bottom, 5.0)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        
                    
                    Text("Athletic Track of Historic Central HS, Detroit - located in one of the oldest communities of Detroit, and is the longest-serving public school in the City. Near Midtown Detroit")
                        .multilineTextAlignment(.center)
                        .lineLimit(6)
                        .padding(.bottom)
                        .minimumScaleFactor(0.4)
                  
                    HStack{
                    Text ("Join")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .fontWeight(.regular)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        
                        Text ("Remind")
                            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .background(Color.blue)
                            .clipShape(Capsule())
                    }
                    Spacer()
                    
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
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView3_Previews: PreviewProvider {
    static var previews: some View {
        DetailView3()
            .environment(\.sizeCategory, .medium)
.previewInterfaceOrientation(.portraitUpsideDown)
            
        DetailView3()
        
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
