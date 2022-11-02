//
//  mine_ProjectApp.swift
//  mine Project
//
//  Created by Rand Alhassoun on 30/10/2022.
//

import SwiftUI




@main
struct mine_ProjectApp: App {
    
    @State var onBoarding = UserDefaults.standard.bool(forKey: "on")
    var body: some Scene {
        WindowGroup {
            if onBoarding {
                TabBar()//yes
            } else {
                homep()//yes
                //QuickTimer()
            }
        }
    }
}
