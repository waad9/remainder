//
//  Settings.swift
//  TimerApp
//
//  Created by Reham Erwi on 06/04/1444 AH.
//

import SwiftUI

struct Settings: View {
    
    @State private var IncludeMilk = true
    @State private var Iced  = true
    @State private var spoonOfSuger = true
    
    let mainColor = Color(red: 243/255, green: 116/255, blue: 88/255)
    
    var body: some View {
        ZStack {
            VStack {
                Form {
                    Toggle("Dark mode", isOn: $IncludeMilk).tint(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(10)

               /* if showGreeting {
                }*/
                Toggle("Vabration", isOn: $Iced).tint(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(10)

                /* if showGreeting {
                 }*/
                Toggle("music", isOn: $spoonOfSuger).tint(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(10)
                }
                //NavigationView {
//                    Form {
//
//                        Toggle(isOn: .constant(true),
//                               label: {
//                            Text("Dark mode")
//                        }).tint(mainColor).padding(3)
//                        Toggle(isOn: .constant(true),
//                               label: {
//                            Text("Vabration")
//                        }).tint(mainColor).padding(3)
//
//                        Toggle(isOn: .constant(true)) {
//                            Text("music")
//                        }.tint(mainColor)
//                            .padding(3)
//
//                    } .navigationBarTitle ("Settings", displayMode: .inline)
                        
                       
                //}
            }
            
        }
        
    }
    
    
    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
        }
    }
}
