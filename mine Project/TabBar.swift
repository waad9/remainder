//
//  TabBar.swift
//  mine Project
//
//  Created by Rand Alhassoun on 30/10/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        //--------------tab viwe------------------
        TabView{
            
            
            QuickTimer().tabItem{Image(systemName: "house")
                Text("home")
            }
            QickTimerSummary().tabItem{Image(systemName: "house")
                Text("home2")
            }
        }
        //----------------------------------------
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
