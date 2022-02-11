//
//  MySettings.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import SwiftUI

struct MySettings: View {
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Profile")){
    //                Label("NicName")
                    
                    Toggle(isOn: .constant(false), label: {
                      Text("My Friends")
                    })
                    Toggle(isOn: .constant(false), label: {
                      Text("My Groups")
                    })
                    
                }
                
                Section(header: Text("Walk and Roll")){
                    Toggle(isOn: .constant(true), label: {
                      Text("Able To Assist")
                    })
                    Toggle(isOn: .constant(true), label: {
                      Text("May Need Assistance")
                    })
                    Toggle(isOn: .constant(true), label: {
                      Text("I Use A Walking Device")
                    })
                    Toggle(isOn: .constant(false), label: {
                      Text("I Use A Wheelchair")
                    })
     
                }
        }
            
        }
        
    }
    
}

struct MySettings_Previews: PreviewProvider {
    static var previews: some View {
        MySettings()
    }
}
