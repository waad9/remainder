//
//  FirstPage.swift
//  mine Project
//
//  Created by Razan Rubui on 31/10/2022.
//

import SwiftUI

struct FirstPage: View {
    @State private var tapCount = UserDefaults.standard.bool(forKey:)

        var body: some View {
           // NavigationView{
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
                            
                           
                        }
                        .padding(20)
                        
                        
                    }
                    
                    //Text("Navigation Link Below:")
                    NavigationLink(destination: SecondIView()) {
                        Text("Set your schedule").font(.title3).padding()
                        //.frame()
                            .frame(width: 350, height: 40)
                            .foregroundColor(.white)
                            .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                            .cornerRadius(15)
                        //.padding()
                        
                    }//bott
                    
                    //Text("Navigation Link Below:")
                    Button {
                        UserDefaults.standard.set(true, forKey: "on")
                    } label: {
                        
                    }
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
            //}//NavigationView
            }//Body
                          }


   



struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
