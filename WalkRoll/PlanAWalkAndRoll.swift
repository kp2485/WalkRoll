//
//  PlanAWalkAndRoll.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import SwiftUI
import MapKit

struct PlanAWalkAndRoll: View {
    
    let screenWidth  = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var walkRolls = [WalkRoll]()
    @State var name = ""
    @State var description = ""
    
    var mapView = MapView()
    var mapRegion = MKCoordinateRegion()
    
//    var centerCoordinate: CLLocationCoordinate2D { get set }
    
    var body: some View {
        
        VStack {
            NavigationView {
                VStack {
                    
                    Spacer()
                        .frame(height: screenHeight * 0.005)
                    
                    ZStack {
                        mapView
                            .frame(height: screenWidth)
                        Image(systemName: "plus")
                            .font(.title.weight(.bold))
                            .foregroundColor(Color(.systemPink))
                            .opacity(0.6)
                    }
                    
                    Text("Place + on starting location")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .padding(.vertical, 1)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Form {
                        
                        TextField("Name of Walk & Roll", text: $name)
                        
                        TextField("Enter a description here", text: $description)
                        
                        
                    }
                    .onAppear(perform: {
                        UITableView.appearance().contentInset.top = -15
                    })
                    
                    HStack {
                        Spacer()
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "return")
                        }
                        .font(.title.weight(.bold))
                        .foregroundColor(Color(.systemPink))
                        Spacer()
                        Button {
                            
                            let mapRegion = mapView.viewModel.region
                            let newWalkRoll = WalkRoll(id: UUID(), name: name, description: description, latitude: mapRegion.center.latitude, longitude: mapRegion.center.longitude)
                            walkRolls.append(newWalkRoll)
                            presentationMode.wrappedValue.dismiss()
                                } label: {
                                    Text("Confirm Walk & Roll").fontWeight(.black)
                                }
                                .padding()
                                .background(.blue.opacity(0.90))
                                .foregroundColor(.white)
                                .font(.title2)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    .background()
                }
                
                .navigationBarTitleDisplayMode(.inline)
                .opacity(0.90)
                .edgesIgnoringSafeArea(.bottom)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                            
                            Text ("Plan A Walk & Roll")
                                .font(.largeTitle)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                                .frame(maxHeight: .infinity)
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
    }
}

struct PlanAWalkAndRoll_Previews: PreviewProvider {
    static var previews: some View {
        PlanAWalkAndRoll()
    }
}
