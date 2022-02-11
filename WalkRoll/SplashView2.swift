//
//  SplashView2.swift
//  WalkRoll
//
//  Created by Delon Hardy on 2/7/22.
//

import SwiftUI

struct SplashView2: View {
    @State var isActive:Bool = false
    var body: some View {
        VStack {
            if self.isActive {
                // 3.
                ContentView()
                    
            }
            else{
        Image("SplashSplash")
            .resizable()
            .renderingMode(.original)
            .padding(.horizontal, -15.0)
            .scaledToFit()
    }
}.onAppear {
    // 6.
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        // 7.
        withAnimation {
            self.isActive = true
        }
    }
    }
        }
    }

struct SplashView2_Previews: PreviewProvider {
    static var previews: some View {
        SplashView2()
    }
}
