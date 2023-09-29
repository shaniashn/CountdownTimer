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
        let newEvent: TheEvents = TheEvents(title: title, date: date)
        event.append(newEvent)
    }
    
    func deleteEvents() {
        
    }
    
    func getDate(date: Date) {
        let date = Calendar.current.dateComponents([ .year, .month, .weekOfMonth, .weekOfYear, .day], from: Date(), to: date)
        let year = date.year ?? 0
        var month = date.month ?? 0
        var weekOfMonth = date.weekOfMonth ?? 0
        var weekOfYear = date.weekOfYear ?? 0
        var day = date.day ?? 0
        print(date)
        
        var formatter = DateFormatter()
        formatter.dateFormat = " "
        
    }

}
