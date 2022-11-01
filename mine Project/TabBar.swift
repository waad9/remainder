//
//  TabBar.swift
//  mine Project
//
//  Created by Rand Alhassoun on 30/10/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        //NavigationView{
        //--------------tab viwe------------------
        TabView{
            
            
            SecondIView().tabItem{Image(systemName: "square.grid.3x3.square")
                Text("Schedule")
            }
            
            QuickTimer().tabItem{Image(systemName: "timer")
                Text("Qick Timer")
            }
            
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
