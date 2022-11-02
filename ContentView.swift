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
    
    @State private var first1 = Date.now
    @State private var second1 = Date.now
    
    @State private var currentUser : User = User()
    
    @State private var buttonColor =  Color(UIColor.systemBackground)
    


    @State private var isEncouragingClicked = false
    @State private var isEntertainmentClicked = false
    @State private var isRelaxationClicked = false
    @State private var isHealthClicked = false
    
    @State private var isEncouraging1Clicked = false
    @State private var isEntertainment1Clicked = false
    @State private var isRelaxation1Clicked = false
    @State private var isHealth1Clicked = false
    
    
    
    @State private var buttonTag = 0

    
    var body: some View {
       // NavigationView{
            
            
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Select break details ")
                 
                    
                }//.padding()
                
                //firest break *******
                
                VStack{
                    Text("First break ")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                        .padding(.top, -15.0)
                    
                    
                    HStack{
                        Text ("From ")
                            .font(.callout)
                            .padding(.leading, 25.0)
    //                     .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        
                        
                        DatePicker("From", selection: $first, displayedComponents: .hourAndMinute)
                            .padding(.trailing, 56.0)
                            .foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
                        
                        
                        
                        Text ("to ")
                            .font(.callout)
                            .padding(-10.0)
                       //     .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        
                        DatePicker("To", selection: $second, displayedComponents: .hourAndMinute)
                            .padding(.trailing, 43.0)
                            //.foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282)
                        
                      
                        
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
                            .background(isEncouragingClicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                      
                        Button("Entertainment"){
                            
                            isEntertainmentClicked.toggle()
                            isHealthClicked = false
                            isRelaxationClicked = false
                            isEncouragingClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isEntertainmentClicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
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
                            .background(isRelaxationClicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                    
                        Button("Health"){
                            
                            isHealthClicked.toggle()
                            isRelaxationClicked = false
                            isEncouragingClicked = false
                            isEntertainmentClicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealthClicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                        
                    }
                }
                
                
                .padding()
                .frame(width: 350, height: 266)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351)
                               ))
                
                
                
                
               

                // second break ********
                
                VStack{
                    Text("Second break")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                        .padding(.top, -15.0)
                    HStack{
                        
                        Text ("From ")
                            .font(.callout)
                            .padding(.leading, 25.0)
    //                     .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        
                        
                        DatePicker("From", selection: $first1, displayedComponents: .hourAndMinute)
                            .padding(.trailing, 54.0)
                            .foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
                        
                        
                        
                        Text ("to ")
                            .font(.callout)
                            .padding(-10.0)
                       //     .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        
                        DatePicker("To", selection: $second1, displayedComponents: .hourAndMinute)
                            .padding(.trailing, 43.0)
                            //.foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282)
                        
                    }//.padding()
                    Text("Break type")
                        .font(.title2)
                        .padding(.trailing, 190.0)
                    
                    
                    HStack{ Button("Encouraging"){
                        
                        
                        isEncouraging1Clicked.toggle()
                        isHealth1Clicked = false
                        isEntertainment1Clicked = false
                        isRelaxation1Clicked = false
                        
                    }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isEncouraging1Clicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                        
                      
                        Button("Entertainment"){
                            
                            isEntertainment1Clicked.toggle()
                            isHealth1Clicked = false
                            isRelaxation1Clicked = false
                            isEncouraging1Clicked = false

                        
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isEntertainment1Clicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                    }
                    
                    HStack{
                        Button("Relaxation"){
                            
                            isRelaxation1Clicked.toggle()
                            isHealth1Clicked = false
                            isEncouraging1Clicked = false
                            isEntertainment1Clicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isRelaxation1Clicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                        
                        Button("Health"){
                            
                            isHealth1Clicked.toggle()
                            isRelaxation1Clicked = false
                            isEncouraging1Clicked = false
                            isEntertainment1Clicked = false
                        }
                            .buttonStyle(.bordered)
                            .foregroundColor(Color(.black))
                            .background(isHealth1Clicked ? Color(red: 0.958, green: 0.441, blue: 0.351) : Color(UIColor.systemBackground) )
                        
                    }
                    
                }
                
                
                .padding()
                .frame(width: 350, height: 266)
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
                    
                    
                    
                }
                .onTapGesture {
                    setTimes ()
                }
                
            }//v
             
        //}
        .padding()
        
        
        .navigationTitle("Set A schedule")
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
