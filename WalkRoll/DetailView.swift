//
//  ContentView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/2/22.
//

import SwiftUI


struct DetailView: View {
    
    let screenWidth  = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    let WalkRoll: WalkRoll
    
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                
                VStack {
                    
                    Spacer()
                        .frame(height: screenHeight * 0.005)
                    
                    MapView()
                        .frame(width: screenWidth, height: screenHeight * 0.50)
                    
                    Text(WalkRoll.name)
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.vertical, 1)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Text("Distance: 2.0 miles")
                        .padding(.bottom, 5.0)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    
                    Text(WalkRoll.description)
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
                }
            }
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(WalkRoll: WalkRoll.testData[0])
            .environment(\.sizeCategory, .medium)
            .previewInterfaceOrientation(.portraitUpsideDown)
        
        DetailView(WalkRoll: WalkRoll.testData[0])
        
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
