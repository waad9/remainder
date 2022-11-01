//
//  ContentView.swift
//  mine Project
//
//  Created by وعد عياد الرويلي on 05/04/1444 AH.
//

import SwiftUI


struct User {
  
    
    
    
    //User Info ...
    
    var breakTimeStart = Date()
    var breakTimeEnd = Date()

}
struct ContentView: View {
    @State private var first = Date.now
    @State private var second = Date.now
    
    @State private var currentUser : User = User()
    
    @State private var buttonColor =  Color(UIColor.systemBackground)
    

    @State private var isHealthClicked = false
    @State private var isEncouragingClicked = false
    @State private var isEntertainmentClicked = false
    @State private var isRelaxationClicked = false

    
    
    
    @State private var buttonTag = 0

    
    var body: some View {
       // NavigationView{
            
            
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Select break details ")
                 
                    
                }//.padding()
                
                //firest break *******
                
                VStack{
                    Text("First Break ")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                    HStack{
                        DatePicker("From", selection: $first, displayedComponents: .hourAndMinute)
                            .padding(0.0)
                        
                        DatePicker("to", selection: $second, displayedComponents: .hourAndMinute)
                        //.foregroundColor()
                        
                      
                        
                    }//.padding()
                    Text("Break type")
                        .padding(.trailing, 190.0)
                        .font(.title2)
                    
                    
                    HStack{ Button("Encouraging"){
                        
                        isEncouragingClicked.toggle()
                        isHealthClicked = false
                        isEntertainmentClicked = false
                        isRelaxationClicked = false
                    }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                      
                        Button("Entertainment"){
                            
                            isEntertainmentClicked.toggle()
                            isHealthClicked = false
                            isRelaxationClicked = false
                            isEncouragingClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                    }
                    
                    HStack{
                        Button("Relaxation" ){
                            
                            isRelaxationClicked.toggle()
                            isHealthClicked = false
                            isEncouragingClicked = false
                            isEntertainmentClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                    
                        Button("Health"){
                            
                            isHealthClicked.toggle()
                            isRelaxationClicked = false
                            isEncouragingClicked = false
                            isEntertainmentClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                        
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
                        DatePicker("to", selection: $second, displayedComponents: .hourAndMinute)
                            .foregroundColor(Color(.black))
                        
                    }//.padding()
                    Text("Break type")
                        .font(.title2)
                        .padding(.trailing, 190.0)
                    
                    
                    HStack{ Button("Encouraging"){
                        
                        
                        isEncouragingClicked.toggle()
                        isHealthClicked = false
                        isEntertainmentClicked = false
                        isRelaxationClicked = false
                        
                    }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                        
                      
                        Button("Entertainment"){
                            
                            isEntertainmentClicked.toggle()
                            isHealthClicked = false
                            isRelaxationClicked = false
                            isEncouragingClicked = false

                        
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                    }
                    
                    HStack{
                        Button("Relaxation"){
                            
                            isRelaxationClicked.toggle()
                            isHealthClicked = false
                            isEncouragingClicked = false
                            isEntertainmentClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                        
                        Button("Health"){
                            
                            isHealthClicked.toggle()
                            isRelaxationClicked = false
                            isEncouragingClicked = false
                            isEntertainmentClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? .red : Color(UIColor.systemBackground) )
                        
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
                
//                .navigationTitle("Set a Schedule")
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
//                        .resizable(resizingMode: .tile)
//                    .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351)) })
                
                
                /* Button("Save"){
                 }
                 .frame(width: 50 ,height: 50)
                 .foregroundColor(.orange)
                 
                 .padding()*/
                
//                Button("Save") {
//                    //print("Button tapped!")
//                }.font(.title3).padding()
//                //.frame()
//                    .frame(width: 350, height: 40)
//                    .foregroundColor(.white)
//                    .background(Color(red: 0.958, green: 0.441, blue: 0.351))
//                    .cornerRadius(15)
//                    .padding()
//
//
                NavigationLink(destination: smury()) {
                   Text("Set").font(.title3).padding()
                    //.frame()
                        .frame(width: 350, height: 40)
                        .foregroundColor(.white)
                        .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                        .cornerRadius(15)
                        .padding()
                    
                    
                    
                }.onTapGesture {
                    setTimes ()
                }
                
            }//v
            
        //}
        .padding()
        
        
        .navigationTitle("CCset A schedule")
        .navigationBarTitleDisplayMode(.inline)

        
        
    }//body
    
    
    func setTimes ()
    {
        currentUser.breakTimeStart = first
        
        currentUser.breakTimeEnd = second
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
