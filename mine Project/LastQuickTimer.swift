//
//  LastQuickTimer.swift
//  TimerApp
//
//  Created by Reham Erwi on 04/04/1444 AH.
//

import SwiftUI

let mainColor = Color(red: 243/255, green: 116/255, blue: 88/255)

let backgroundGradient = LinearGradient(
    colors: [mainColor, Color.white],
    startPoint: .top, endPoint: .bottom)

struct LastQuickTimer: View {
    
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
    var body: some View {
        
        
        
        ZStack {
            
            backgroundGradient
                .ignoresSafeArea()
            
            VStack {
                
                //timerIshere
                
                ZStack {  Text("\(vm.time)")
                        .font(.system(size: 30, weight: .medium, design: .rounded))
                        .foregroundColor(mainColor)
                        .frame(width: 300, height: 250)
                        
                        .background(.white)
                        .shadow(color: mainColor, radius: 10)
                        .clipShape(Circle())
                        .shadow(color: .white, radius: 4)
                    .frame(width: 200, height: 270, alignment: .top)}
                
                VStack {
                    HStack{
                        
                   //     Label{
                     //   Text("Select time").font(.system(size: 26, weight: .light, design: .rounded)).frame(width: 205, height: 50, alignment: .topLeading)

                    }
                        /*icon: {
                       Image("time").frame(width: 100, height: 24.0 , alignment: .trailing)*/
                        
//                    }}
                    VStack {
                        HStack{ Label {
                            Text("Working hours").font(.system(size: 20, weight: .light, design: .rounded)).fontWeight(.bold).frame(width: 300, height: 50, alignment: .bottomLeading)}
                        icon: {
                            Image("working").resizable().scaledToFit().frame(width: 33.0, height: 35.0)}}}
                    
                    
                    HStack{
                        
                        Slider(value: $vm.hours, in: 1...12, step: 1)
                            .disabled(vm.isActive)
                            .animation(.easeInOut, value: vm.mins)
                        //   .padding()
                            .frame(width: 200)
                            .tint(mainColor)
                        
                        Text("\(vm.time)")
                            .font(.system(size: 19, weight: .medium, design: .rounded))
                        .foregroundColor(mainColor)}
                    
                    HStack{
                        Label{
                            Text("Length of Break  ").font(.system(size: 20, weight: .light, design: .rounded)).fontWeight(.bold).frame(width: 300, height: 50, alignment: .bottomLeading)}
                    icon: {
                        Image("coffee").resizable().scaledToFit().frame(width: 24.0, height: 24.0)}}
               
                    
                    
                    HStack{
                        
                        Slider(value: $vm.mins, in: 1...30, step: 1)
                        
                            .disabled(vm.isActive)
                            .animation(.easeInOut, value: vm.mins)
                        //.padding()
                            .frame(width: 200)
                            .tint(mainColor)
                        
                        Text("\(vm.breakTime)")
                            .font(.system(size: 19, weight: .medium, design: .rounded))
                        .foregroundColor(mainColor)}}.padding(40)
                
                
                            VStack {
                
                
                
                                Button("Start") {
                                    vm.start(hours: vm.hours)
                
                                } .frame(width: 350, height: 40)
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                                    .cornerRadius(15)
                                
                
                
                                Button("Cancel", action: vm.reset)
                                    .frame(width: 350, height: 40)
                                    .frame(width: 350, height: 40)
                                    .foregroundColor(.black)
                                    .background(.white)
                                    .cornerRadius(15)
//                                    .shadow(color: mainColor , radius: 5)
                
                
                            }
                            .padding(.bottom, 10)
                
                
                
            }
            
            
            
        }
    }
    struct LastQuickTimer_Previews: PreviewProvider {
        static var previews: some View {
            LastQuickTimer()
        }
    }
}
