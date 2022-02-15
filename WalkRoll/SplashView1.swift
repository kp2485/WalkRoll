//
//  SplashView1.swift
//  WalkRoll
//
//  Created by Delon Hardy on 2/7/22.
//

import SwiftUI

struct SplashView1: View {
    var body: some View {
        Image("Splash1")
            .resizable()
            .padding(.bottom)
            .scaledToFill()
    }
}

struct SplashView1_Previews: PreviewProvider {
    static var previews: some View {
        SplashView1()
    }
}
