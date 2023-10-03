//
//  CountDownViewModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import SwiftUI

class CountDownViewModel: ObservableObject {
    @Published var event: [TheEvents] = [] //tambah array untuk collecting data
    @Published var timesRemain: [TimesRemaining] = []
    
    func addEvents(title: String, date: Date) { //tujuannya adalah memasukkan 1 TheEvents (object) -> [TheEvents(), TheEvents()]
        let remainings = getDate(date: date)
//        let remainings: TimesRemaining = TimesRemaining(day: <#T##Int#>, month: <#T##Int#>)
        let newEvent: TheEvents = TheEvents(title: title, date: date, remaining: remainings)
        event.append(newEvent)
    }
    
    func deleteEvents(index: IndexSet) {
        event.remove(atOffsets: index)
    }
    
    func getDate(date: Date) -> String {
        let date = Calendar.current.dateComponents([ .year, .month, .day, .hour], from: Date(), to: date)
//        let year = date.year ?? 0
//        var month = date.month ?? 0
//        var weekOfMonth = date.weekOfMonth ?? 0
//        var weekOfYear = date.weekOfYear ?? 0
        let day = date.day ?? 0
        let month = date.month ?? 0
        let year = date.month ?? 0
        let hour = date.hour ?? 0

        let finalDate: String = "\(month) month \(day) day \(hour) hour"
        
        return finalDate
    }

    func getDatePerComponents(date: Date) -> DateComponents {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        
        if date.month != 0 {
            return date
        }
        return date
    }
    
    func getDay(date: Date) -> Int {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        let day = date.day ?? 0
        
        return day
    }
    
    func getMonth(date: Date) -> Int {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        let month = date.month ?? 0
        
        return month
    }
    
    
}
