//
//  FirstPage.swift
//  mine Project
//
//  Created by Razan Rubui on 31/10/2022.
//

import SwiftUI

struct FirstPage: View {
  
        var body: some View {
            NavigationView{
                VStack {
                    Text("Name")
                        .font(.title)
                    //.padding()
                        .foregroundColor(Color(red: 0.56, green: 0.565, blue: 0.586))
                    
                    Image("Image")
                        .resizable()
                        .frame(width: 400, height: 350)
                        .cornerRadius(1)
                        .frame(maxWidth: .infinity)
                    
                    VStack {
                        Text( "Simply Manage all your Breaks" )
                            .font(.title)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        Text( "by scheduling a full week ahead or setting " )
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.578))
                            .padding(1.0)
                            .multilineTextAlignment(.leading)
                        
                        Text( "a quick timer!" )
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 0.557, green: 0.557, blue: 0.578))
                            .padding(1.0)
                            .multilineTextAlignment(.leading)
                        
                        
                        VStack {
                            //Text("Write your name")
                            
                            TextField("Write your name", text: .constant(""))
                                .frame(width: 350, height: 40)
                            //                    .overlay(
                            //                        RoundedRectangle(cornerRadius: 15)
                            //                            .stroke(lineWidth: 2)
                            //                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                            //                    )
                            //.padding(<#T##length: CGFloat##CGFloat#>)
                                .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            
                            
                            
                            //                    Button ("Set your schedule"){
                            //                    }
                            //                    .frame(width: 350, height: 40)
                            //    //                    .overlay(
                            //    //                        RoundedRectangle(cornerRadius: 15)
                            //    //                            .stroke(lineWidth: 2)
                            //    //                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                            //    //                    )
                            //                        .foregroundColor(.white)
                            //                    //.padding(6)
                            //                        .font (.title2)
                            //                        .foregroundColor(.white)
                            //                        .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                            //
                            //                    Button ("Start a quick timer"){
                            //                    } .frame(width: 350, height: 40)
                            //                        .foregroundColor(.white)
                            //                    //.padding(6)
                            //                        .font (.title2)
                            //                      //.systemFont(ofSize: 19.0, weight: 5.bold)
                            //                      .foregroundColor(.white)
                            //                      .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                            //                    RoundedRectangle(cornerRadius: 15)
                            //                        .stroke(lineWidth: 2)
                            //                        .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                        }
                        .padding(55.0)
                        
                        
                    }
                    
                    //Text("Navigation Link Below:")
                    NavigationLink(destination: QuickTimer()) {
                        Text("Set your schedule").font(.title3).padding()
                        //.frame()
                            .frame(width: 350, height: 40)
                            .foregroundColor(.white)
                            .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                            .cornerRadius(15)
                        //.padding()
                        
                    }//bott
                    
                    //Text("Navigation Link Below:")
                    NavigationLink(destination: QuickTimer()) {
                        Text("Start a quick timer").font(.title3).padding()
                        //.frame()
                            .frame(width: 350, height: 40)
                            .foregroundColor(.white)
                            .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                            .cornerRadius(15)
                            .padding()
                        
                    }//bott
                    
                }//v
            }//NavigationView
            }//Body
                          }


   



struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
