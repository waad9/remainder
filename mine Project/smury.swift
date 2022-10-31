//
//  smury.swift
//  mine Project
//
//  Created by وعد عياد الرويلي on 06/04/1444 AH.
//

import SwiftUI


struct smury: View {
    var body: some View {
        
        NavigationView{
        VStack{
            HStack{
                //---------------------------------
                VStack(spacing: 20){
                    Text("Working days")
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
                    Text("Working hours")
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
                    Text("Breaks")
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
            Text("Working days")
                .font(.largeTitle)
                .foregroundColor(Color("Color 1"))
            VStack{
                //---------------------------------
                VStack{
                    Text("Working days: Sunday to Thursdat")
                    Text("Working Time: 9:00AM to 1:00PM")
                        .font(.body).padding(-9)
                }//V1
                .padding()
                .frame(width: 370, height: 120)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                    
                )
               
                
                
                //---------------------------------
                Text("Breakss typs")
                    .font(.largeTitle)
                    .foregroundColor(Color("Color 1"))
                VStack{
                    
                    VStack{
                        Text("Each day you will have 2 breaks")
                        HStack{
                            
                            
                            Text("1-").foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                            Text("Health")
                        }
                        HStack{
                            Text("2-").foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                            Text("Entertamint")
                                .font(.body)
                        }
                    }
                } //V2
                .padding()
                .frame(width: 370, height: 120)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                    
                )
               
                
                
                //---------------------------------
                
                
                
            }//v2
            .padding()
            Spacer()
            
            Button("Start") {
                //print("Button tapped!")
            }.font(.title3).padding()
            //.frame()
                .frame(width: 350, height: 40)
                .foregroundColor(.white)
                .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                .cornerRadius(15)
               // .padding()
            
            Button("Delete") {
                //print("Button tapped!")
            }.font(.title3).padding()
            //.frame()
                .frame(width: 300, height: 20)
                .foregroundColor(.black)
                .cornerRadius(15)
               // .padding()
          
            
                .navigationTitle("Summary")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
                        .resizable(resizingMode: .tile)
                    .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                    
                })
                .padding()
                
            
        }//v1
            
           
        //.background(Color.gray)
        
    }//body
        .padding(10)
       
}

    }
  
    
    
    
    struct smury_Previews: PreviewProvider {
        static var previews: some View {
            smury()
        }
    }

