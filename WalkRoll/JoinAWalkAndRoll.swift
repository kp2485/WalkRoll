//
//  FindAWalkAndRoll.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import SwiftUI

struct JoinAWalkAndRoll: View {
    private let SFsimbleList: [SFsimbleItem] = [
        SFsimbleItem(
        sfsimble: "person",
        name: "Boston-Edison AM crew",
        description: "Welcome To Your Group!"),
        SFsimbleItem(
        sfsimble: "person",
        name: "Sacred Heart Track",
        description: "Welcome To Your Group!"),
        SFsimbleItem(
            sfsimble:  "person",
        name: "Central HS Track",
        description: "Welcome To Your Group!"),
        SFsimbleItem(
        sfsimble: "person",
        name: "West Side Walkers",
        description: "Welcome To Your Group!"),
       
        
        
        
    ]
     
    var body: some View {
 
        NavigationView {
            List(SFsimbleList) { SFsimbleItem in
              NavigationLink(destination: DetailsView(SFsimbleItem: SFsimbleItem)) {
                HStack {
                    SFSimbleView(SFsimbleItem: SFsimbleItem)
                     
                    Text(SFsimbleItem.name)
                        .font(.headline)
                }.padding(7)
              }
            }
            .navigationBarTitle("Join A Walk and Roll")
        }
    }
}
 
struct DetailsView: View {
 
  let SFsimbleItem: SFsimbleItem
   
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        SFSimbleView(SFsimbleItem: SFsimbleItem)
          .padding(.trailing, 5)
         
        Text(SFsimbleItem.name)
          .font(.largeTitle)
          .bold()
         
        Spacer()
      }
       
      Text(SFsimbleItem.description)
        .padding(.top)
       
      Spacer()
    }
    .padding()
    .navigationBarTitle(Text(SFsimbleItem.name), displayMode: .inline)
  }
}
 
struct SFSimbleView: View {
  let SFsimbleItem: SFsimbleItem
   
  var body: some View {
    ZStack {
        Image(systemName: SFsimbleItem.sfsimble).foregroundColor(.black)
            .font(.system(size: 50))
            .shadow(radius: 5)
    }
  }
}
 
struct SFsimbleItem: Identifiable {
  let id = UUID()
  let sfsimble: String
  let name: String
  let description: String
}
 
struct JoinAWalkAndRoll_Previews: PreviewProvider {
    static var previews: some View {
        JoinAWalkAndRoll()
    }
}
