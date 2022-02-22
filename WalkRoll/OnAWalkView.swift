//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct OnAWalkView: View {
    
    let screenWidth  = UIScreen.main.bounds.size.width
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    
                    MapView()
                        .frame(height: screenWidth)

                    
                    
                    
                    Spacer()
                    
                    ShortProgressView()
                    
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
                            
                            Text ("Walk & Roll Name")
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

struct OnAWalkView_Previews: PreviewProvider {
    static var previews: some View {
        OnAWalkView()
            .environment(\.sizeCategory, .medium)
            
        OnAWalkView()
        
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
