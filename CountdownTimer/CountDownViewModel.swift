//
//  CountDownViewModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import SwiftUI

class CountDownViewModel: ObservableObject {
    @Published var event: [TheEvents] = [] //tambah array untuk collecting data
    
    func addEvents(title: String, date: Date) { //tujuannya adalah memasukkan 1 TheEvents (object) -> [TheEvents(), TheEvents()]
        var remainings = getDate(date: date)
        let newEvent: TheEvents = TheEvents(title: title, date: date, remaining: remainings)
        event.append(newEvent)
    }
    
    func deleteEvents() {
        
    }
    
    func getDate(date: Date) -> Int {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
//        let year = date.year ?? 0
//        var month = date.month ?? 0
//        var weekOfMonth = date.weekOfMonth ?? 0
//        var weekOfYear = date.weekOfYear ?? 0
        var day = date.day ?? 0
        
//        var formatter = DateFormatter()
//        formatter.dateFormat = " "
        
        return day
    }

    func showDate() {
//        let dte = dateEvent
//        let day = dte.day ?? 0
//
//        timeRemains = "\(day)"
//
//        print(dateEvent)
        
    }
}
