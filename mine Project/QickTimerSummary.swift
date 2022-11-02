//
//  QickTimerSummary.swift
//  mine Project
//
//  Created by Rand Alhassoun on 30/10/2022.
//

import SwiftUI

struct QickTimerSummary: View {
    var body: some View {
        NavigationView{
        
        VStack{
           
            HStack{
    //---------------------------------
                VStack(spacing: 20){
                    Text("Working Hours")
                        //.font(.title3)
            }//v
                .font(.title3)
                .padding()
                .frame(width: 110, height: 100)
                .foregroundColor(.white)
                .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                .cornerRadius(15)
    //---------------------------------
                VStack(spacing: 20){
                    Text("Length of abreak")
                        .font(.title3)
            }//v
                .font(.title3)
                .padding()
                .frame(width: 110, height: 100)
                .foregroundColor(.white)
                .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                .cornerRadius(15)
    //---------------------------------
                VStack(spacing: 20){
                    Text("Nuumber of breaks")
                        .font(.title3)
            }//v
                .font(.title3)
                .padding()
                .frame(width: 110, height: 100)
                .foregroundColor(.white)
                .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                .cornerRadius(15)
    //---------------------------------
            }//h
            Spacer()///======================================
            VStack{
    //---------------------------------
                VStack{
                    Text("Working Hours").font(.title2).padding(10)
                    Text("From 9:41AM until 11:00AM").foregroundColor(.gray)
                }//V1
                    .padding()
                    .frame(width: 370, height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                        
                    )
                        /*.padding(10)
                        //.frame(maxWidth: .infinity)
                        .background(Color.white)
                        .ignoresSafeArea()
                        .frame(width: 370, height: 120)
                        .border(Color(red: 0.958, green: 0.441, blue: 0.351))
                        .cornerRadius(15)
                         */
                
                        
    //---------------------------------
                VStack{
                    Text("Length of a break").font(.title2)
                    Text("Each break will be 15 minutes").foregroundColor(.gray)
                    
                }//V2
                    .padding()
                    .frame(width: 370, height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                        
                    )
                /*.padding(10)
                //.frame(maxWidth: .infinity)
                .background(Color.white)
                .ignoresSafeArea()
                .frame(width: 370, height: 129)
                .border(Color(red: 0.958, green: 0.441, blue: 0.351))
                //Color.blue
                .cornerRadius(15)*/

                
                
    //---------------------------------
                VStack{
                    Text("Nuumber of breaks").font(.title2)
                    Text("Their will be 3 breaks").foregroundColor(.gray)
                    
                }//V3
                    .padding()
                    .frame(width: 370, height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                        
                    )
                /*
                .padding(10)
                //.frame(maxWidth: .infinity)
                .background(Color.white)
                .ignoresSafeArea()
                .frame(width: 370, height: 120)
                .border(Color(red: 0.958, green: 0.441, blue: 0.351))
                .cornerRadius(15)
                 */
                
    //---------------------------------

            }//v2
            .padding(10)
            Spacer()
            Button("Start") {
                 //print("Button tapped!")
             }.font(.title3).padding()
                     //.frame()
                .frame(width: 350, height: 40)
                 .foregroundColor(.white)
                 .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                 .cornerRadius(15)
                 .padding()
            
            
            
        }//v1
        .navigationTitle("Summary")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
                .resizable(resizingMode: .tile)
            .foregroundColor(Color("Color")) })
            
        }// NavigationView{
        //.background(Color.gray)
    
    }//body
       
}

struct QickTimerSummary_Previews: PreviewProvider {
    static var previews: some View {
        QickTimerSummary()
    }
}
