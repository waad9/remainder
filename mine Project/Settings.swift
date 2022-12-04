//
//  Settings.swift
//  TimerApp
//
//  Created by Reham Erwi on 06/04/1444 AH.
//

import SwiftUI



struct Settings: View {
    

    
    @State private var Dark = true
    @State private var Iced  = true
    @State private var spoonOfSuger = true
    @State private var isOn = true

    


    
    
    let mainColor = Color(red: 243/255, green: 116/255, blue: 88/255)
    
    var body: some View {
      //  ZStack {
            VStack {
                

                Form {
                    //============
                    HStack{
                    //Text(isOn ? "light" : "dark")
                    Toggle((Dark ? "dark Mode Off" : "dark Mode On"),isOn: $Dark).tint(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(10)}
                    //============
                Toggle("Vabration", isOn: $Iced).tint(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(10)

                /* if showGreeting {
                 }*/
                Toggle("music", isOn: $spoonOfSuger).tint(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(10)
                }//form
                
               .preferredColorScheme(Dark ? .light : .dark)

            }//.preferredColorScheme($isOn ? .light : .dark)
            .navigationTitle(" Set a Schedule")
        .navigationBarTitleDisplayMode(.inline)
        //}
        
    }
    
    
    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
        }
    }
}
