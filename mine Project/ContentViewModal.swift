//
//  ContentVieo.swift
//  TimerApp
//
//  Created by Reham Erwi on 04/04/1444 AH.
//

import Foundation

extension LastQuickTimer {
    final class ViewModel: ObservableObject {
        @Published var isActive = false
        @Published var showingAlert = false
        @Published var time: String = "00:00"
        @Published var hours: Float = 1.00 {
            didSet {
                print("d:\(Int(hours))")
                self.time = "\(Int(hours)):00:00"
            }
        }
        @Published var breakTime: String = "1:00"
        @Published var mins: Float = 1.0 {
            didSet {
                self.breakTime = "\(Int(mins)):00"
            }
            
        }
        private var initialTime = 0
        private var endDate = Date()
        
        // Start the timer with the given amount of hours
        func start(hours: Float) {
            self.initialTime = Int(hours)
            //            self.endDate = Date()//Date()
            // var CoreData = Data(hours)
            
            self.isActive = true
            self.endDate = Calendar.current.date(byAdding: .hour, value: Int(hours), to: endDate)!
        }
        
        // Reset the timer
        func reset() {
            self.hours = Float(initialTime)
            self.isActive = false
            self.time = "\(Int(hours)):00:00"
        }
        
        // Show updates of the timer
        func updateCountdown(){
            guard isActive else { return }
            
            // Gets the current date and makes the time difference calculation
            let now = Date()
            let diff = endDate.timeIntervalSince1970 - now.timeIntervalSince1970
            
            // Checks that the countdown is not <= 0
            if diff <= 0 {
                self.isActive = false
                self.time = "0:00:00"
                self.showingAlert = true
                return
            }
            
            // Turns the time difference calculation into sensible data and formats it
            let date = Date(timeIntervalSince1970: diff)
            let calendar = Calendar.current
            let hours = calendar.component(.hour, from: date)
            let minutes = calendar.component(.minute, from: date)
            let seconds = calendar.component(.second, from: date)
            
            // Updates the time string with the formatted time
            self.hours = Float(hours)
            self.time = String(format: "%02i:%02i:%02i", hours, minutes, seconds)
        }
    }
}
