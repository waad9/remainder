//
//  SwiftUIView.swift
//  mine Project
//
//  Created by Rand Alhassoun on 01/11/2022.
//

//
//  SecondIView.swift
//  Razan Final
//
//  Created by Razan Rubui on 26/10/2022.
//
import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
    

    
    var isCompleted: Bool
    
    
}
    struct SecondIView: View {
        @State private var first = Date.now
        @State private var second = Date.now
        
        @State private var tasks = [Task(name: "Sunday", isCompleted: false), Task(name: "Monday", isCompleted: false),Task(name: "Tuesday", isCompleted: false),Task(name: "Wednesday", isCompleted: false),Task(name: "Thursday", isCompleted: false),Task(name: "Friday", isCompleted: false),Task(name: "Saturday", isCompleted: false)]
        
        @State private var Tasks2 = [Task(name: "1", isCompleted: false), Task(name: "2", isCompleted: false),Task(name: "3", isCompleted: false)]
        
        @State var value2 = ""
            var placeholder2 = "Number of breaks"//Working Hours
            var dropDownList2 = ["1", "2", "3"]
        
        var body: some View {
            
            NavigationView {
                VStack{
                    Text( "Select working time" )
                        .font(.title2)
                        .padding(.trailing, 168.0)
                       //.fontWeight(.regular)
                        .foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
    //                    .multilineTextAlignment(.leading)
                    
                    
                    HStack{
                        
                        Text ("From ")
                            .font(.callout)
                            .padding(.leading, 25.0)
    //                     .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        
                        
                        DatePicker("From", selection: $first, displayedComponents: .hourAndMinute)
                            .padding(.trailing, 54.0)
                            .foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
                        
                        
                        
                        Text ("to ")
                            .font(.callout)
                            .padding(-10.0)
                       //     .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        
                        DatePicker("To", selection: $second, displayedComponents: .hourAndMinute)
                            .padding(.trailing, 43.0)
                            //.foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
                        
                    }
                    
                    .padding(.top, 4)
                    .frame(width: 370, height: 40.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                            .padding(-3.0)
                    )
                    
                    Text ("Select working days")
                        .font(.title2)
                        .padding(.trailing, 168.0)
                       // .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
                    
                    VStack {
                        List($tasks) { $task in
                            TaskCellView(task: $task)
                
                        }
                        
                        
                        //                               Text("Completed tasks count: \(tasks.filter { $0.isCompleted }.count)")
                        .cornerRadius(15)

                    }
                    //.padding(-2)
                    .padding(.all, -9.0)
                    .frame(width: 370, height: 360.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                            .padding(-3.0)
                    )
                    Text( "Select number of breaks" )
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 130.0)
                        //.fontWeight()
                        .foregroundColor(Color(red: 0.167, green: 0.249, blue: 0.282))
    //                    .multilineTextAlignment(.leading)
                    VStack {
    //                    List($Tasks2) { $task in
    //                        TaskCellView(task: $task)
    //
    //
    //                    }
    //                    .cornerRadius(15)
                        //------------Dropdown2------------
                        Menu {
                                   ForEach(dropDownList2, id: \.self){ client in
                                       Button(client) {
                                           self.value2 = client
                                       }
                                   }
                               } label: {
                                   VStack(spacing: 5){
                                       HStack{
                                           Text(value2.isEmpty ? placeholder2 : value2)
                                               .foregroundColor(value2.isEmpty ? .gray : .black)
                                           Spacer()
                                           Image(systemName: "chevron.down")
                                               .foregroundColor(Color(red: 0.958, green: 0.441, blue: 0.351))
                                               .font(Font.system(size: 15, weight: .bold))
                                       }
                                       .padding(.horizontal)
                                       Rectangle()
                                           .fill(Color(red: 0.958, green: 0.441, blue: 0.351))
                                           .frame(height: 2)
                                   }
                               }.padding()
                            
                            ///.frame(width:150, height: 20)
                            //.foregroundColor(.white)
                            //.background(Color(red: 0.958, green: 0.441, blue: 0.351))
                            ///.shadow(color: Color(red: 0.958, green: 0.441, blue: 0.351) radius: 7)
                            //.cornerRadius(15)
                               /// .padding()
                        //------------Dropdown2------------
                    }
                    //.padding(.all,9.0)
                    .frame(width: 370, height: 50.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                            .stroke(Color(red: 0.958, green: 0.441, blue: 0.351))
                            .padding(3.0)
                    )
                    
                    
                    
                               //Text("Navigation Link Below:")
                               NavigationLink(destination: ContentView()) {
                                  Text("Next").font(.title3).padding()
                                   //.frame()
                                       .frame(width: 350, height: 40)
                                       .foregroundColor(.white)
                                       .background(Color(red: 0.958, green: 0.441, blue: 0.351))
                                       .cornerRadius(15)
                                       //.padding()
                               }
                }
                .navigationTitle(" Set a Schedule")
            .navigationBarTitleDisplayMode(.inline)
            }//nav
        }//body
    }
    struct SecondIView_Previews: PreviewProvider {
        static var previews: some View {
            SecondIView()
        }
    }
    
    struct TaskCellView: View {
        
        @Binding var task: Task
        
        var body: some View {
            HStack {
                Image(systemName: task.isCompleted ? "checkmark.square": "square")
                    .onTapGesture {
                        task.isCompleted.toggle()
                    }
                Text(task.name)
            }
        }
    }

