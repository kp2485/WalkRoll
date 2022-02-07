//
//  SplashView2.swift
//  WalkRoll
//
//  Created by Delon Hardy on 2/7/22.
//

import SwiftUI

struct SplashView2: View {
    var body: some View {
        Image("Splash2")
            .resizable()
            .padding([.leading, .bottom, .trailing], -4.0)
            .scaledToFit()
    }
}

struct SplashView2_Previews: PreviewProvider {
    static var previews: some View {
        SplashView2()
    }
}
