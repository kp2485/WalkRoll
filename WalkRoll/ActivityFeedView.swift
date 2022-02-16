//
//  ActivityFeedView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/15/22.
//

import SwiftUI

struct ActivityFeedView: View {
    var body: some View {
        VStack {
//            HStack {
//                Text("Shirley will be rolling Central HS Track today at 11am")
//                    .font(.title3)
//                    .padding(.bottom)
//                Image(systemName: "person.fill")
//                    .padding(.trailing)
//                    .font(.system(size: 24))
//                    .frame(width: 60)
//            }
            HStack {
                Text("The Rosedale Park Rollers meet Saturday at 9am")
                    .font(.title3)
                    .padding(.bottom)
                Image(systemName: "person.3.fill")
                    .font(.system(size: 24))
                    .frame(width: 60)
            }
        }
        .padding()
        
    }
}

struct ActivityFeedView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityFeedView()
    }
}
