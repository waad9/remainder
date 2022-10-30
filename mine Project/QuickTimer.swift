//
//  QuickTimer.swift
//  mine Project
//
//  Created by Rand Alhassoun on 30/10/2022.
//

import SwiftUI

struct QuickTimer: View {
    
    
    @State var value = ""
        var placeholder = "Hours"//Working Hours
        var dropDownList = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    
    @State var value2 = ""
        var placeholder2 = "Break Length"//Working Hours
        var dropDownList2 = ["1 Min", "5 Min", "15 Min"]


    
    var body: some View {
        
        NavigationView{
        VStack{
           
           
            VStack{
            HStack{
                Text("shahad")
            Text("Enter Working Hours").font(.title2)
            
            //------------Dropdown------------
            Menu {
                       ForEach(dropDownList, id: \.self){ client in
                           Button(client) {
                               self.value = client
                           }
                       }
                   } label: {
                       VStack(spacing: 5){
                           HStack{
                               Text(value.isEmpty ? placeholder : value)
                                   .foregroundColor(value.isEmpty ? .gray : .black)
                               Spacer()
                               Image(systemName: "chevron.down")
                                   .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                                   .font(Font.system(size: 15, weight: .bold))
                           }
                           .padding(.horizontal)
                           Rectangle()
                               .fill(Color(red: 0.958, green: 0.441, blue: 0.351))
                               .frame(height: 2)
                       }
                   }.padding()
                .frame(width:150, height: 20)
                //.foregroundColor(.white)
                //.background(Color(red: 0.958, green: 0.441, blue: 0.351))
                .shadow(color: Color(red: 0.958, green: 0.441, blue: 0.351), radius: 7)
                //.cornerRadius(15)
                    .padding()
                //------------Dropdown------------
               

                
            }.padding()//h
            Text(" Every 60 minutes you will get a break").foregroundColor(.gray)
            VStack{
            Text(" Select Length of break").font(.title2)
            
            //------------Dropdown2------------
            Menu {
                       ForEach(dropDownList2, id: \.self){ client in
                           Button(client) {
                               self.value2 = client
                           }
                       }
                   } label: {
                       VStack(spacing: 5){
                           HStack{
                               Text(value2.isEmpty ? placeholder2 : value2)
                                   .foregroundColor(value2.isEmpty ? .gray : .black)
                               Spacer()
                               Image(systemName: "chevron.down")
                                   .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                                   .font(Font.system(size: 15, weight: .bold))
                           }
                           .padding(.horizontal)
                           Rectangle()
                               .fill(Color(red: 0.958, green: 0.441, blue: 0.351))
                               .frame(height: 2)
                       }
                   }.padding()
                
                ///.frame(width:150, height: 20)
                //.foregroundColor(.white)
                //.background(Color(red: 0.958, green: 0.441, blue: 0.351))
                ///.shadow(color: Color(red: 0.958, green: 0.441, blue: 0.351) radius: 7)
                //.cornerRadius(15)
                   /// .padding()
            //------------Dropdown2------------
            }.padding()//h2
           
            

            
            //------------------------

            
        }//VStack
            .padding()
            .frame(width: 355, height: 320)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 2)
                .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                
            )
            
        
            /*.padding()
            .border(Color(red: 0.958, green: 0.441, blue: 0.351))
            .frame(maxWidth: .infinity)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(15)
             */
            
        //--------Button---------------
//       Button("Set") {
//            //print("Button tapped!")
//        }.font(.title3).padding()
//                //.frame()
//            .foregroundColor(.white)
//            .background(Color(red: 0.958, green: 0.441, blue: 0.351))
//            .cornerRadius(15)
//            .padding()
            
            //--------------------------------

                       //Text("Navigation Link Below:")
                       NavigationLink(destination: QickTimerSummary()) {
                          Text("Set").font(.title3).padding()
                           //.frame()
                       .foregroundColor(.white)
                       .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                       .cornerRadius(15)
                       .padding()
                       }
            
            // Button("Set"){}
            //--------------------------------
        //button
        }//v2
        .navigationTitle(" Quick Timer")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
                .resizable(resizingMode: .tile)
            .foregroundColor(Color("Color")) })
        }// NavigationView {
        }
        //nav


    }


struct QuickTimer_Previews: PreviewProvider {
    static var previews: some View {
        QuickTimer()
    }
}
