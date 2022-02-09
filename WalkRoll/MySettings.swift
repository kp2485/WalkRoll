//
//  MySettings.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import SwiftUI

struct MySettings: View {
    @State var name: String = "Otis"
    
    var body: some View {
        VStack{
            TextField("Enter Name", text:$name)
            Text("Hello,\(name)")
        }
    }
}

struct MySettings_Previews: PreviewProvider {
    static var previews: some View {
        MySettings()
    }
}

