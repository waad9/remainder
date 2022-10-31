//
//  ContentView.swift
//  mine Project
//
//  Created by وعد عياد الرويلي on 05/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var first = Date.now
    @State private var second = Date.now
    
    
    var body: some View {
        NavigationView{
            
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Select break details ")
                 
                    
                }//.padding()
                
                //firest break *******
                
                VStack{
                    Text("First Break")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                    HStack{
                        DatePicker("From", selection: $first, displayedComponents: .hourAndMinute)
                        // .foregroundColor(Color("Color 1"))
                        
                        DatePicker("To", selection: $second, displayedComponents: .hourAndMinute)
                        //.foregroundColor(Color("Color 1"))
                        
                        
                    }//.padding()
                    Text("Break type")
                    
                    
                    HStack{ Button("Health"){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                        
                      
                        Button("Relaxation" ){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                    }
                    
                    HStack{
                        Button("Entertainment"){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                        Button("Focus"){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                        
                    }
                }
                
                
                .padding()
                .frame(width: 350, height: 250)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351)
                               ))
                
                // second break ********
                
                VStack{
                    Text("Second Break")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                    HStack{
                        
                        DatePicker("From", selection: $first, displayedComponents: .hourAndMinute)
                            .foregroundColor(Color(.black))
                        DatePicker("To", selection: $second, displayedComponents: .hourAndMinute)
                            .foregroundColor(Color(.black))
                        
                    }//.padding()
                    Text("Break type")
                    
                    
                    HStack{ Button("Health"){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                      
                        Button("Relaxation" ){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                    }
                    
                    HStack{
                        Button("Entertainment"){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                        Button("Focus"){}
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                        
                    }
                    
                }
                
                
                .padding()
                .frame(width: 350, height: 250)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351)
                               ))
                
                
                // titell *******
                
                .navigationTitle("Set a Schedule")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
                        .resizable(resizingMode: .tile)
                    .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351)) })
                
                
                /* Button("Save"){
                 }
                 .frame(width: 50 ,height: 50)
                 .foregroundColor(.orange)
                 
                 .padding()*/
                
                Button("Save") {
                    //print("Button tapped!")
                }.font(.title3).padding()
                //.frame()
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                    .cornerRadius(15)
                    .padding()
                
                
                
                
            }
            //.padding()
            
            // button save
            
            /*  Button("Save"){
             }
             .frame(width: 350 ,height: 200)
             .foregroundColor(.orange)*/
            
        }.padding()
        
        
        
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
