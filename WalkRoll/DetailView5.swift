//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct DetailView5: View {
    
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
                    
                    Text("Palmer Park Walk & Roll")
                        .font(.title)
                        .fontWeight(.medium)
//                        .padding(.horizontal)
                        .padding(.vertical, 1)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    
                    Text("Distance: 4.0 miles")
                        .padding(.bottom, 5.0)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        
                    
                    Text("Palmer Park is comprised of 296 acres of lawns and historic woodlands, tennis courts, splash park, hiking and biking trails, Lake Frances and its lighthouse, an historic log cabin, the Detroit Mounted Police and more. Located in West Detroit off Woodward Avenue between McNichols & Seven Mile Road. It has been a treasured nature park and recreation site for more than 100 years.")
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

struct DetailView5_Previews: PreviewProvider {
    static var previews: some View {
        DetailView5()
            .environment(\.sizeCategory, .medium)
.previewInterfaceOrientation(.portraitUpsideDown)
            
        DetailView5()
        
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
