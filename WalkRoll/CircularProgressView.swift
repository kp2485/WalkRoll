//
//  CircularProgressView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/14/22.
//

import SwiftUI

struct CircularProgressView: View {
    
    @State private var progress: CGFloat = 0.42
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 30)
                .opacity(0.3)
            Circle()
                .trim(from: 0, to: 0.42)
                .stroke(Color.blue, lineWidth: 20)
                .rotationEffect(.degrees(-90))
                .overlay(Text("\(Int(progress * 100.0))%").font(.system(size: 30)))
        }
        .frame(width: 105, height: 105)
        .padding()
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
        CircularProgressView()
            
    }
}
