//
//  homep.swift
//  OnBoarding
//
//  Created by Mohammad Azam on 12/11/20.
//
import SwiftUI

extension UserDefaults {
    
    var FirstPageShown: Bool {
        get {
            return (UserDefaults.standard.value(forKey: "FirstPageShown") as? Bool) ?? false
            
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "FirstPageShown")
        }
    }
    
}


struct homep: View {
   
    
    var body: some View {
        Firs1tPage()
//        if UserDefaults.standard.FirstPageShown {
//            //Firs1tPage()
//            TabBar()
//        } else {
//            //TabBar()
//            Firs1tPage()
//        }
    }
}

struct Firs1tPage: View {

    @AppStorage("FirstPageShown") // UserDefaults
    var FirstPageShown: Bool = false
    @State var ispresented = false
    //
    @State var isModal: Bool = false
    @State var isModalT: Bool = false

    
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
//                    NavigationLink(destination: SecondIView()) {
//                        Text("Set your schedule").font(.title3).padding()
//                        //.frame()
//                            .frame(width: 350, height: 40)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0.958, green: 0.441, blue: 0.351))
//                            .cornerRadius(15)
//                        //.padding()
//
//                    }//bott
                //--------------------------
                Button("Set your schedule"){
                    //===
                    UserDefaults.standard.set(true, forKey: "on")
                    ispresented.toggle()
                    //===
                    self.isModal = true
                }.frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                    .cornerRadius(15)
                    .padding()
                    .sheet(isPresented: $isModal, content: {
                        //smury()
                      //  SecondIView()
                        
                        TabBar(selection: 1)
                        
                })
                //--------------------------------------------
                Button("Start a quick timer"){
                    //===
                    
                    UserDefaults.standard.set(true, forKey: "on")
                    ispresented.toggle()
                    //===
                    self.isModalT = true
                }.frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                    .cornerRadius(15)
                    .padding()
                 //   .
                    .sheet(isPresented: $isModalT, content: {
                   // QuickTimer()
                        
                        TabBar(selection: 2)
                })
                //--------------------------------------------
                //Text("Navigation Link Below:")
//                Button {
//                    UserDefaults.standard.set(true, forKey: "on")
//                    ispresented.toggle()
//
//                } label: {
//                    Text("Start a quick timer").font(.title3).padding()
//                    //.frame()
//                        .frame(width: 350, height: 40)
//                        .foregroundColor(.white)
//                        .background(Color(red: 0.958, green: 0.441, blue: 0.351))
//                        .cornerRadius(15)
//                        .padding()
//                }
                //.fullScreenCover(isPresented:$ispresented, content: QuickTimer())
                        
                //                    NavigationLink(destination: QuickTimer()) {
//                        Text("Start a quick timer").font(.title3).padding()
//                        //.frame()
//                            .frame(width: 350, height: 40)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0.958, green: 0.441, blue: 0.351))
//                            .cornerRadius(15)
//                            .padding()
//
//                    }//bott
                
            }//v
        //}//NavigationView
        }//Body


}

struct homep_Previews: PreviewProvider {
    static var previews: some View {
        homep()
    }
}


//struct FirstPagelast: View {
//    @State private var tapCount = UserDefaults.standard.bool(forKey:)
//    //@State var ispresented = falseXXXX
//
//                          }
