//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct DetailView2: View {
    
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
                    
                    Text("Sacred Heart Track")
                        .font(.title)
                        .fontWeight(.medium)
//                        .padding(.horizontal)
                        .padding(.vertical, 1)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    
                    Text("Distance: 3.5 miles")
                        .padding(.bottom, 5.0)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        
                    
                    Text("This is a Walk & Roll located at the Historic Roman Catholic church complex listed as one of the National Register of Historic Places in 1980. This site has a sizable track consisting of recurring walks at 6.00 pm, every Wednesday and Friday")
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

struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2()
            .environment(\.sizeCategory, .medium)
.previewInterfaceOrientation(.portraitUpsideDown)
            
        DetailView2()
        
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}