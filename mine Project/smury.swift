//
//  smury.swift
//  mine Project
//
//  Created by وعد عياد الرويلي on 06/04/1444 AH.
//

import SwiftUI


struct smury: View {
    @State var isshownsecondview = false
    var body: some View {
        
        //NavigationView{
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
          
            ///======================================
       //     Text("Working days")
       //         .font(.largeTitle)
        //        .foregroundColor()
            VStack{
                //---------------------------------
              
//                Text("Working days")
//                    .font(.largeTitle)
//                    .foregroundColor(Color(.black))
//                    .multilineTextAlignment(.leading)
//                    .padding(.trailing, 126.0)
                
                VStack{
                    
                      Text("Working days")
                          .font(.largeTitle)
                          .foregroundColor(Color(.black))
                          .multilineTextAlignment(.leading)
                          .padding(.bottom, 2.0)
                    
                    Text("Working days: Sunday to Thursdat")
                        .padding(.trailing, 62.0)
                    Text("Working Time: 9:00AM to 1:00PM")
                        .font(.body).padding(.trailing, 62.0)
                }//V1
            .padding()
                                    .frame(width: 370, height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                        .stroke(lineWidth: 2)
                                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                                        
                                    )
                
               
                
                
                //---------------------------------
//                Text("Breakss typs")
//                    .font(.largeTitle)
//                    .foregroundColor(Color(.black))
//                    .padding(.trailing, 125.0)
                VStack{
                    
                    VStack{
                        Text("Breakss typs")
                            .font(.largeTitle)
                            .foregroundColor(Color(.black))
                            .padding(.vertical, 1.0)
                        
                        Text("Each day you will have 2 breaks")
                            .padding(.trailing, 60.0)
                        HStack{
                            
                            
                            Text("1-").foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                            Text("Health")
                                .padding(.trailing, 167.0)
                        }
                        HStack{
                            Text("2-").foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351)).padding(.trailing, 2.0)
                            Text("Entertamint")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 125.0)
                            
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
               
                                    .padding()
                
                //---------------------------------
                
                
                
            }//v2
            .padding()
          //Spacer()
            
            Button("Start") {
                //print("Button tapped!")
                isshownsecondview.toggle()
                
            }.font(.title3).padding()
            //.frame()
                .frame(width: 350, height: 40)
                .foregroundColor(.white)
                .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                .cornerRadius(15)
               //.padding()
                .fullScreenCover(isPresented:$isshownsecondview){
                    SecondIView()
                }
            Button("Delete") {
                //print("Button tapped!")
                
            }.font(.title3).padding()
            //.frame()
                .frame(width: 300, height: 20)
                .foregroundColor(.black)
                .cornerRadius(15)
                //.padding()
          
//
//                .navigationTitle("Summary")
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
//                        .resizable(resizingMode: .tile)
//                    .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
//
//                })
            //Spacer()
                //.padding()
                
            
        }//v1
       
        .navigationTitle("Summary")
        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarItems(leading:Button{}label: {Image(systemName: "arrow.backward")
//                .resizable(resizingMode: .tile)
//            .foregroundColor(Color("Color")) })
           
        //.background(Color.gray)
        
    //}//
        .padding()
        
       
}//body

    }
  
    
    
    
    struct smury_Previews: PreviewProvider {
        static var previews: some View {
            smury()
        }
    }

