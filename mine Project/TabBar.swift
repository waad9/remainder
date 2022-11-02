//
//  TabBar.swift
//  mine Project
//
//  Created by Rand Alhassoun on 30/10/2022.
//

import SwiftUI

struct TabBar: View {
    
    
    //@State var SecondIViewSelected = false
    
    @State var selection = 0
    
    
    var body: some View {
        //NavigationView{
        //--------------tab viwe------------------
        
       
        TabView(selection: $selection){
            
            
            SecondIView().tabItem{Image(systemName: "square.grid.3x3.square")
                Text("Schedule")
            }.tag(1)
            
            QuickTimer().tabItem{Image(systemName: "timer")
                Text("Qick Timer")
            }.tag(2)
            
            QickTimerSummary().tabItem{Image(systemName: "gear")
                Text("Settings")
            }
        }.accentColor(Color(red: 0.958, green: 0.441, blue: 0.351))
        
        //----------------------------------------
  //  }//NavigationView
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        
        TabBar()
    }
}
