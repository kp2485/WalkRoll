//
//  MySettings.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import SwiftUI

struct MySettings: View {
    @State var name: String = "Otis"
    @State var AdditionalAssistance = ""
    @State var AbleToAssist = false
    @State var WalkingDevice = false
    @State var Wheelchair = false
    @State var NeedAssistance = false
    var body: some View {

        NavigationView{
            
            Form{
                
                Section(header: Text("Walk and Roll")){
                    Toggle(isOn: $AbleToAssist, label: {
                      Text("Able To Assist")
                    })
                    
                    Toggle(isOn: $WalkingDevice, label:{
                      Text("I Use A Walking Device")
                    })
                    Toggle(isOn: $Wheelchair, label: {
                      Text("I Use A Wheelchair")
                        
                    })
                    Toggle(isOn: $NeedAssistance, label: {
                      Text("I Need Assistance")
                    })
                    
                    TextField("Enter additional assistance needed", text:$AdditionalAssistance)
                }
                
        }
            .hiddenNavigationBarStyle()
        }
        .navigationTitle("My Settings")
        

    }
    


struct MySettings_Previews: PreviewProvider {
    static var previews: some View {
        MySettings()
    }
}

}
