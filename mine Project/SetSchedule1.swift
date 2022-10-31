//
//    SetSchedule1.swift
//  Razan Final
//
//  Created by Razan Rubui on 26/10/2022.
//

import SwiftUI

struct   SetSchedule1: View {
    var body: some View {
        VStack {
            Text("Name")
                .font(.title)
            //.padding()
                .foregroundColor(Color(red: 0.56, green: 0.565, blue: 0.586))
            
            Image("My project")
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
    
                TextField("Write your name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 350, height: 40)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 15)
//                            .stroke(lineWidth: 2)
//                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
//                    )
                    //.padding(<#T##length: CGFloat##CGFloat#>)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                
                
        
                Button ("Set your schedule"){
                }
                .frame(width: 350, height: 40)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 15)
//                            .stroke(lineWidth: 2)
//                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
//                    )
                    .foregroundColor(.white)
                //.padding(6)
                    .font (.title2)
                    .foregroundColor(.white)
                    .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                
                Button ("Start a quick timer"){
                } .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                //.padding(6)
                    .font (.title2)
                  //.systemFont(ofSize: 19.0, weight: 5.bold)
                  .foregroundColor(.white)
                  .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                    .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
            }
            .padding(55.0)
                

            }
        }
        }
                      }


struct   SetSchedule1_Previews: PreviewProvider {
    static var previews: some View {
          SetSchedule1()
    }
}
